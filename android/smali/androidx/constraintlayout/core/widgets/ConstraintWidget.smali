.class public Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# static fields
.field public static t0:F = 0.5f


# instance fields
.field public A:F

.field B:I

.field C:F

.field private D:[I

.field private E:F

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:I

.field private J:I

.field public K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field protected T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private U:[Z

.field public V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field X:I

.field Y:I

.field public Z:F

.field public a:Z

.field protected a0:I

.field public b:Landroidx/constraintlayout/core/widgets/analyzer/c;

.field protected b0:I

.field public c:Landroidx/constraintlayout/core/widgets/analyzer/c;

.field protected c0:I

.field public d:Landroidx/constraintlayout/core/widgets/analyzer/k;

.field d0:I

.field public e:Landroidx/constraintlayout/core/widgets/analyzer/m;

.field protected e0:I

.field public f:[Z

.field protected f0:I

.field private g:Z

.field g0:F

.field private h:Z

.field h0:F

.field private i:Z

.field private i0:Ljava/lang/Object;

.field private j:I

.field private j0:I

.field private k:I

.field private k0:Ljava/lang/String;

.field private l:Z

.field private l0:Ljava/lang/String;

.field private m:Z

.field m0:I

.field private n:Z

.field n0:I

.field private o:Z

.field public o0:[F

.field public p:I

.field protected p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public q:I

.field protected q0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private r:I

.field public r0:I

.field public s:I

.field public s0:I

.field public t:I

.field public u:[I

.field public v:I

.field public w:I

.field public x:F

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/k;

    .line 4
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    const/4 v2, 0x2

    new-array v3, v2, [Z

    .line 5
    fill-array-data v3, :array_0

    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    const/4 v3, 0x1

    .line 6
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 7
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h:Z

    .line 8
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:Z

    const/4 v4, -0x1

    .line 9
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    .line 10
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:I

    .line 11
    new-instance v5, Landroidx/constraintlayout/core/state/a;

    invoke-direct {v5, p0}, Landroidx/constraintlayout/core/state/a;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 13
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 14
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:Z

    .line 15
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:Z

    .line 16
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p:I

    .line 17
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 18
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 19
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 20
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    new-array v5, v2, [I

    .line 21
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    .line 22
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 23
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 24
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    .line 25
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 26
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 27
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 28
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 29
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    new-array v5, v2, [I

    .line 30
    fill-array-data v5, :array_1

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    const/4 v5, 0x0

    .line 31
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:F

    .line 32
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 33
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    .line 34
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:I

    .line 35
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:I

    .line 36
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 37
    new-instance v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 38
    new-instance v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v8, p0, v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 39
    new-instance v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v9, p0, v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 40
    new-instance v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v10, p0, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v10, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 41
    new-instance v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v11, p0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v11, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 42
    new-instance v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v11, p0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v11, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 43
    new-instance v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v11, p0, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v11, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v12, 0x6

    new-array v12, v12, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aput-object v6, v12, v0

    aput-object v8, v12, v3

    aput-object v7, v12, v2

    const/4 v6, 0x3

    aput-object v9, v12, v6

    const/4 v6, 0x4

    aput-object v10, v12, v6

    const/4 v6, 0x5

    aput-object v11, v12, v6

    .line 44
    iput-object v12, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 45
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    new-array v6, v2, [Z

    .line 46
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    new-array v6, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 47
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v7, v6, v0

    aput-object v7, v6, v3

    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 48
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 49
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 51
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 52
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 53
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 54
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 55
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 56
    sget v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t0:F

    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 57
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 58
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 59
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:Ljava/lang/String;

    .line 61
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    .line 62
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:I

    new-array v5, v2, [F

    .line 63
    fill-array-data v5, :array_2

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:[F

    new-array v5, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v1, v5, v0

    aput-object v1, v5, v3

    .line 64
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v1, v2, v0

    aput-object v1, v2, v3

    .line 65
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 66
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r0:I

    .line 67
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s0:I

    .line 68
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d()V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private a0(I)Z
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_0

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private i(Landroidx/constraintlayout/core/d;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    .line 1
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    .line 2
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    .line 3
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    .line 4
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    .line 5
    invoke-static {}, Landroidx/constraintlayout/core/d;->x()Landroidx/constraintlayout/core/e;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6
    invoke-static {}, Landroidx/constraintlayout/core/d;->x()Landroidx/constraintlayout/core/e;

    move-result-object v5

    iget-wide v11, v5, Landroidx/constraintlayout/core/e;->w:J

    const-wide/16 v16, 0x1

    add-long v11, v11, v16

    iput-wide v11, v5, Landroidx/constraintlayout/core/e;->w:J

    .line 7
    :cond_0
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result v11

    .line 8
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result v12

    .line 9
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result v16

    if-eqz v12, :cond_1

    add-int/lit8 v5, v11, 0x1

    goto :goto_0

    :cond_1
    move v5, v11

    :goto_0
    if-eqz v16, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    if-eqz p17, :cond_3

    const/16 v18, 0x3

    goto :goto_1

    :cond_3
    move/from16 v18, p22

    .line 10
    :goto_1
    sget-object v17, Landroidx/constraintlayout/core/widgets/ConstraintWidget$a;->b:[I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aget v2, v17, v19

    const/4 v14, 0x1

    if-eq v2, v14, :cond_4

    const/4 v14, 0x2

    if-eq v2, v14, :cond_4

    const/4 v14, 0x3

    if-eq v2, v14, :cond_4

    const/4 v14, 0x4

    if-eq v2, v14, :cond_6

    :cond_4
    move/from16 v2, v18

    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    :cond_6
    move/from16 v2, v18

    if-eq v2, v14, :cond_5

    const/16 v18, 0x1

    .line 11
    :goto_2
    iget v14, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    const/4 v13, -0x1

    if-eq v14, v13, :cond_7

    if-eqz p2, :cond_7

    .line 12
    iput v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    move-object/from16 v21, v6

    const/16 v18, 0x0

    goto :goto_3

    :cond_7
    move/from16 v14, p13

    move-object/from16 v21, v6

    .line 13
    :goto_3
    iget v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:I

    if-eq v6, v13, :cond_8

    if-nez p2, :cond_8

    .line 14
    iput v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:I

    move v14, v6

    const/16 v18, 0x0

    .line 15
    :cond_8
    iget v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v13, 0x8

    if-ne v6, v13, :cond_9

    const/4 v14, 0x0

    const/16 v18, 0x0

    :cond_9
    if-eqz p27, :cond_b

    if-nez v11, :cond_a

    if-nez v12, :cond_a

    if-nez v16, :cond_a

    move/from16 v6, p12

    .line 16
    invoke-virtual {v10, v9, v6}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    goto :goto_4

    :cond_a
    if-eqz v11, :cond_b

    if-nez v12, :cond_b

    .line 17
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v6

    invoke-virtual {v10, v9, v7, v6, v13}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    :cond_b
    :goto_4
    if-nez v18, :cond_f

    if-eqz p9, :cond_d

    const/4 v6, 0x3

    const/4 v13, 0x0

    .line 18
    invoke-virtual {v10, v8, v9, v13, v6}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    const/16 v6, 0x8

    if-lez v15, :cond_c

    .line 19
    invoke-virtual {v10, v8, v9, v15, v6}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_c
    const v14, 0x7fffffff

    if-ge v1, v14, :cond_e

    .line 20
    invoke-virtual {v10, v8, v9, v1, v6}, Landroidx/constraintlayout/core/d;->j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_5

    :cond_d
    const/16 v6, 0x8

    const/4 v13, 0x0

    .line 21
    invoke-virtual {v10, v8, v9, v14, v6}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    :cond_e
    :goto_5
    move/from16 v14, p5

    move/from16 v23, v5

    move-object v13, v7

    move-object v1, v8

    move-object/from16 v15, v21

    :goto_6
    move/from16 v21, v3

    goto/16 :goto_f

    :cond_f
    const/4 v1, 0x2

    const/4 v13, 0x0

    if-eq v5, v1, :cond_12

    if-nez p17, :cond_12

    const/4 v1, 0x1

    if-eq v2, v1, :cond_10

    if-nez v2, :cond_12

    .line 22
    :cond_10
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_11

    .line 23
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_11
    const/16 v6, 0x8

    .line 24
    invoke-virtual {v10, v8, v9, v1, v6}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    move/from16 v14, p5

    move/from16 v23, v5

    move-object v13, v7

    move-object v1, v8

    move-object/from16 v15, v21

    const/16 v18, 0x0

    goto :goto_6

    :cond_12
    const/4 v1, -0x2

    if-ne v3, v1, :cond_13

    move v6, v14

    goto :goto_7

    :cond_13
    move v6, v3

    :goto_7
    if-ne v4, v1, :cond_14

    move v1, v14

    goto :goto_8

    :cond_14
    move v1, v4

    :goto_8
    if-lez v14, :cond_15

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    const/4 v14, 0x0

    :cond_15
    if-lez v6, :cond_16

    const/16 v3, 0x8

    .line 25
    invoke-virtual {v10, v8, v9, v6, v3}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 26
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_16
    if-lez v1, :cond_19

    if-eqz p3, :cond_17

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    const/4 v3, 0x0

    goto :goto_9

    :cond_17
    const/4 v3, 0x1

    :goto_9
    if-eqz v3, :cond_18

    const/16 v3, 0x8

    .line 27
    invoke-virtual {v10, v8, v9, v1, v3}, Landroidx/constraintlayout/core/d;->j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_a

    :cond_18
    const/16 v3, 0x8

    .line 28
    :goto_a
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_b

    :cond_19
    const/16 v3, 0x8

    :goto_b
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c

    if-eqz p3, :cond_1a

    .line 29
    invoke-virtual {v10, v8, v9, v14, v3}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    const/4 v4, 0x5

    goto :goto_c

    :cond_1a
    if-eqz p19, :cond_1b

    const/4 v4, 0x5

    .line 30
    invoke-virtual {v10, v8, v9, v14, v4}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    .line 31
    invoke-virtual {v10, v8, v9, v14, v3}, Landroidx/constraintlayout/core/d;->j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_c

    :cond_1b
    const/4 v4, 0x5

    .line 32
    invoke-virtual {v10, v8, v9, v14, v4}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    .line 33
    invoke-virtual {v10, v8, v9, v14, v3}, Landroidx/constraintlayout/core/d;->j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :goto_c
    move/from16 v14, p5

    move v4, v1

    move/from16 v23, v5

    move-object v13, v7

    move-object v1, v8

    move-object/from16 v15, v21

    move/from16 v21, v6

    goto/16 :goto_f

    :cond_1c
    const/4 v4, 0x5

    const/4 v14, 0x2

    if-ne v2, v14, :cond_20

    .line 34
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v3, v4, :cond_1e

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v3

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v3, v13, :cond_1d

    goto :goto_d

    .line 35
    :cond_1d
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    .line 36
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    goto :goto_e

    .line 37
    :cond_1e
    :goto_d
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    .line 38
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    :goto_e
    move-object/from16 v23, v3

    move-object v13, v4

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    move-result-object v4

    move-object v3, v4

    move-object v14, v4

    const/16 v24, 0x5

    move-object v4, v8

    move/from16 p9, v1

    move v1, v5

    move-object v5, v9

    move-object/from16 v15, v21

    move/from16 v21, v6

    move-object v6, v13

    move-object v13, v7

    move-object/from16 v7, v23

    move/from16 v23, v1

    move-object v1, v8

    move/from16 v8, p26

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/b;->k(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/b;

    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    if-eqz p3, :cond_1f

    const/16 v18, 0x0

    :cond_1f
    move/from16 v14, p5

    move/from16 v4, p9

    goto :goto_f

    :cond_20
    move/from16 p9, v1

    move/from16 v23, v5

    move-object v13, v7

    move-object v1, v8

    move-object/from16 v15, v21

    move/from16 v21, v6

    move/from16 v4, p9

    const/4 v14, 0x1

    :goto_f
    if-eqz p27, :cond_60

    if-eqz p19, :cond_21

    move-object/from16 v3, p7

    move-object v2, v1

    move/from16 p15, v14

    move/from16 v5, v23

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object/from16 v1, p6

    move-object v14, v9

    goto/16 :goto_31

    :cond_21
    if-nez v11, :cond_22

    if-nez v12, :cond_22

    if-nez v16, :cond_22

    goto/16 :goto_2c

    :cond_22
    if-eqz v11, :cond_24

    if-nez v12, :cond_24

    move-object/from16 v7, p10

    const/4 v8, 0x0

    .line 40
    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz p3, :cond_23

    .line 41
    instance-of v2, v2, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v2, :cond_23

    const/16 v13, 0x8

    goto :goto_10

    :cond_23
    const/4 v13, 0x5

    :goto_10
    move/from16 v23, p3

    move-object v2, v1

    move v6, v13

    move/from16 p15, v14

    const/4 v4, 0x0

    goto/16 :goto_2e

    :cond_24
    move-object/from16 v7, p10

    const/4 v8, 0x0

    if-nez v11, :cond_27

    if-eqz v12, :cond_27

    .line 42
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v2

    neg-int v2, v2

    const/16 v3, 0x8

    invoke-virtual {v10, v1, v15, v2, v3}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    if-eqz p3, :cond_5b

    .line 43
    iget-boolean v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h:Z

    if-eqz v2, :cond_26

    iget-boolean v2, v9, Landroidx/constraintlayout/core/SolverVariable;->g:Z

    if-eqz v2, :cond_26

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_26

    .line 44
    check-cast v2, Landroidx/constraintlayout/core/widgets/d;

    if-eqz p2, :cond_25

    .line 45
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/d;->q1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto/16 :goto_2c

    .line 46
    :cond_25
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/d;->v1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto/16 :goto_2c

    :cond_26
    move-object/from16 v6, p6

    const/4 v2, 0x5

    .line 47
    invoke-virtual {v10, v9, v6, v8, v2}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/16 :goto_2c

    :cond_27
    move-object/from16 v6, p6

    if-eqz v11, :cond_5b

    if-eqz v12, :cond_5b

    .line 48
    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v12, p11

    const/4 v3, 0x2

    .line 49
    iget-object v5, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v3

    const/16 v16, 0x6

    if-eqz v18, :cond_3d

    if-nez v2, :cond_2c

    if-nez v4, :cond_29

    if-nez v21, :cond_29

    .line 51
    iget-boolean v4, v13, Landroidx/constraintlayout/core/SolverVariable;->g:Z

    if-eqz v4, :cond_28

    iget-boolean v4, v15, Landroidx/constraintlayout/core/SolverVariable;->g:Z

    if-eqz v4, :cond_28

    .line 52
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v10, v9, v13, v2, v3}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    .line 53
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v1, v15, v2, v3}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    return-void

    :cond_28
    const/16 v4, 0x8

    const/16 v19, 0x8

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    goto :goto_11

    :cond_29
    const/4 v4, 0x5

    const/16 v19, 0x5

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    .line 54
    :goto_11
    instance-of v8, v11, Landroidx/constraintlayout/core/widgets/a;

    if-nez v8, :cond_2b

    instance-of v8, v5, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v8, :cond_2a

    goto :goto_13

    :cond_2a
    move-object/from16 v8, p7

    move/from16 v25, v23

    move/from16 v23, v22

    move/from16 v22, v19

    move/from16 v19, v2

    :goto_12
    const/4 v2, 0x6

    goto/16 :goto_22

    :cond_2b
    :goto_13
    move-object/from16 v8, p7

    move/from16 v19, v2

    move/from16 v25, v23

    const/4 v2, 0x6

    move/from16 v23, v22

    const/16 v22, 0x4

    goto/16 :goto_22

    :cond_2c
    const/4 v8, 0x2

    if-ne v2, v8, :cond_2f

    .line 55
    instance-of v4, v11, Landroidx/constraintlayout/core/widgets/a;

    if-nez v4, :cond_2e

    instance-of v4, v5, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v4, :cond_2d

    goto :goto_14

    :cond_2d
    move-object/from16 v8, p7

    move/from16 v19, v2

    const/4 v2, 0x6

    const/4 v4, 0x5

    const/16 v22, 0x5

    goto/16 :goto_20

    :cond_2e
    :goto_14
    move-object/from16 v8, p7

    move/from16 v19, v2

    goto/16 :goto_1e

    :cond_2f
    const/4 v8, 0x1

    if-ne v2, v8, :cond_30

    move-object/from16 v8, p7

    move/from16 v19, v2

    const/4 v2, 0x6

    const/16 v4, 0x8

    goto/16 :goto_1f

    :cond_30
    const/4 v8, 0x3

    if-ne v2, v8, :cond_3c

    .line 56
    iget v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    move/from16 v19, v2

    const/4 v2, -0x1

    if-ne v8, v2, :cond_33

    if-eqz p20, :cond_32

    move-object/from16 v8, p7

    if-eqz p3, :cond_31

    const/4 v2, 0x5

    goto :goto_15

    :cond_31
    const/4 v2, 0x4

    goto :goto_15

    :cond_32
    move-object/from16 v8, p7

    const/16 v2, 0x8

    :goto_15
    const/16 v4, 0x8

    :goto_16
    const/16 v22, 0x5

    :goto_17
    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x1

    goto/16 :goto_22

    :cond_33
    if-eqz p17, :cond_37

    move/from16 v2, p23

    const/4 v8, 0x2

    if-eq v2, v8, :cond_35

    const/4 v4, 0x1

    if-ne v2, v4, :cond_34

    goto :goto_18

    :cond_34
    const/4 v2, 0x0

    goto :goto_19

    :cond_35
    :goto_18
    const/4 v2, 0x1

    :goto_19
    if-nez v2, :cond_36

    const/16 v2, 0x8

    const/4 v4, 0x5

    goto :goto_1a

    :cond_36
    const/4 v2, 0x5

    const/4 v4, 0x4

    :goto_1a
    move-object/from16 v8, p7

    move/from16 v22, v4

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x1

    move v4, v2

    goto :goto_12

    :cond_37
    if-lez v4, :cond_38

    move-object/from16 v8, p7

    const/4 v2, 0x6

    const/4 v4, 0x5

    goto :goto_16

    :cond_38
    if-nez v4, :cond_3b

    if-nez v21, :cond_3b

    if-nez p20, :cond_39

    move-object/from16 v8, p7

    const/4 v2, 0x6

    const/4 v4, 0x5

    const/16 v22, 0x8

    goto :goto_17

    :cond_39
    if-eq v11, v3, :cond_3a

    if-eq v5, v3, :cond_3a

    const/4 v2, 0x4

    goto :goto_1b

    :cond_3a
    const/4 v2, 0x5

    :goto_1b
    move-object/from16 v8, p7

    move v4, v2

    const/4 v2, 0x6

    goto :goto_1c

    :cond_3b
    move-object/from16 v8, p7

    const/4 v2, 0x6

    const/4 v4, 0x5

    :goto_1c
    const/16 v22, 0x4

    goto :goto_17

    :cond_3c
    move/from16 v19, v2

    move-object/from16 v8, p7

    const/4 v2, 0x6

    const/4 v4, 0x5

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v24, 0x0

    goto :goto_21

    :cond_3d
    move/from16 v19, v2

    .line 57
    iget-boolean v2, v13, Landroidx/constraintlayout/core/SolverVariable;->g:Z

    if-eqz v2, :cond_40

    iget-boolean v2, v15, Landroidx/constraintlayout/core/SolverVariable;->g:Z

    if-eqz v2, :cond_40

    .line 58
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v2

    .line 59
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v13

    move/from16 p20, v2

    move/from16 p21, p16

    move-object/from16 p22, v15

    move-object/from16 p23, v1

    move/from16 p24, v3

    move/from16 p25, v4

    .line 60
    invoke-virtual/range {p17 .. p25}, Landroidx/constraintlayout/core/d;->c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    if-eqz p3, :cond_3f

    if-eqz v14, :cond_3f

    .line 61
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_3e

    .line 62
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v13

    move-object/from16 v8, p7

    goto :goto_1d

    :cond_3e
    move-object/from16 v8, p7

    const/4 v13, 0x0

    :goto_1d
    if-eq v15, v8, :cond_3f

    const/4 v2, 0x5

    .line 63
    invoke-virtual {v10, v8, v1, v13, v2}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_3f
    return-void

    :cond_40
    move-object/from16 v8, p7

    :goto_1e
    const/4 v2, 0x6

    const/4 v4, 0x5

    :goto_1f
    const/16 v22, 0x4

    :goto_20
    const/16 v23, 0x1

    const/16 v24, 0x1

    :goto_21
    const/16 v25, 0x0

    :goto_22
    if-eqz v24, :cond_41

    if-ne v13, v15, :cond_41

    if-eq v11, v3, :cond_41

    const/16 v24, 0x0

    const/16 v26, 0x0

    goto :goto_23

    :cond_41
    const/16 v26, 0x1

    :goto_23
    if-eqz v23, :cond_43

    if-nez v18, :cond_42

    if-nez p18, :cond_42

    if-nez p20, :cond_42

    if-ne v13, v6, :cond_42

    if-ne v15, v8, :cond_42

    const/16 v23, 0x0

    const/16 v26, 0x8

    const/16 v27, 0x8

    const/16 v28, 0x0

    goto :goto_24

    :cond_42
    move/from16 v23, p3

    move/from16 v27, v2

    move/from16 v28, v26

    move/from16 v26, v4

    .line 64
    :goto_24
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v4

    .line 65
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v29

    move-object v2, v1

    move-object/from16 v1, p1

    move-object/from16 p9, v2

    move/from16 v12, v19

    move-object v2, v9

    move/from16 p15, v14

    move-object v14, v3

    move-object v3, v13

    move-object v12, v5

    move/from16 v5, p16

    move-object v6, v15

    move-object/from16 v7, p9

    move/from16 v8, v29

    move-object/from16 v20, v14

    move-object v14, v9

    move/from16 v9, v27

    .line 66
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/d;->c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move/from16 v4, v26

    move/from16 v26, v28

    goto :goto_25

    :cond_43
    move-object/from16 p9, v1

    move-object/from16 v20, v3

    move-object v12, v5

    move/from16 p15, v14

    move-object v14, v9

    move/from16 v23, p3

    .line 67
    :goto_25
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_44

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l()Z

    move-result v1

    if-nez v1, :cond_44

    return-void

    :cond_44
    if-eqz v24, :cond_47

    if-eqz v23, :cond_46

    if-eq v13, v15, :cond_46

    if-nez v18, :cond_46

    .line 68
    instance-of v1, v11, Landroidx/constraintlayout/core/widgets/a;

    if-nez v1, :cond_45

    instance-of v1, v12, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v1, :cond_46

    :cond_45
    const/4 v4, 0x6

    .line 69
    :cond_46
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v1

    invoke-virtual {v10, v14, v13, v1, v4}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 70
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v2, p9

    invoke-virtual {v10, v2, v15, v1, v4}, Landroidx/constraintlayout/core/d;->j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_26

    :cond_47
    move-object/from16 v2, p9

    :goto_26
    if-eqz v23, :cond_48

    if-eqz p21, :cond_48

    .line 71
    instance-of v1, v11, Landroidx/constraintlayout/core/widgets/a;

    if-nez v1, :cond_48

    instance-of v1, v12, Landroidx/constraintlayout/core/widgets/a;

    if-nez v1, :cond_48

    move-object/from16 v1, v20

    if-eq v12, v1, :cond_49

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/16 v26, 0x1

    goto :goto_27

    :cond_48
    move-object/from16 v1, v20

    :cond_49
    move/from16 v3, v22

    :goto_27
    if-eqz v26, :cond_55

    if-eqz v25, :cond_52

    if-eqz p20, :cond_4a

    if-eqz p4, :cond_52

    :cond_4a
    if-eq v11, v1, :cond_4c

    if-ne v12, v1, :cond_4b

    goto :goto_28

    :cond_4b
    move v6, v3

    goto :goto_29

    :cond_4c
    :goto_28
    const/4 v6, 0x6

    .line 72
    :goto_29
    instance-of v5, v11, Landroidx/constraintlayout/core/widgets/e;

    if-nez v5, :cond_4d

    instance-of v5, v12, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v5, :cond_4e

    :cond_4d
    const/4 v6, 0x5

    .line 73
    :cond_4e
    instance-of v5, v11, Landroidx/constraintlayout/core/widgets/a;

    if-nez v5, :cond_4f

    instance-of v5, v12, Landroidx/constraintlayout/core/widgets/a;

    if-eqz v5, :cond_50

    :cond_4f
    const/4 v6, 0x5

    :cond_50
    if-eqz p20, :cond_51

    const/4 v6, 0x5

    .line 74
    :cond_51
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_52
    if-eqz v23, :cond_54

    .line 75
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz p17, :cond_54

    if-nez p20, :cond_54

    if-eq v11, v1, :cond_53

    if-ne v12, v1, :cond_54

    :cond_53
    const/4 v3, 0x4

    .line 76
    :cond_54
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v1

    invoke-virtual {v10, v14, v13, v1, v3}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    .line 77
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v2, v15, v1, v3}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    :cond_55
    if-eqz v23, :cond_57

    move-object/from16 v1, p6

    if-ne v1, v13, :cond_56

    .line 78
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    goto :goto_2a

    :cond_56
    const/4 v3, 0x0

    :goto_2a
    if-eq v13, v1, :cond_57

    const/4 v4, 0x5

    .line 79
    invoke-virtual {v10, v14, v1, v3, v4}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_2b

    :cond_57
    const/4 v4, 0x5

    :goto_2b
    if-eqz v23, :cond_59

    if-eqz v18, :cond_59

    const/4 v1, 0x5

    if-nez p14, :cond_5a

    if-nez v21, :cond_5a

    if-eqz v18, :cond_58

    move/from16 v3, v19

    const/4 v4, 0x3

    if-ne v3, v4, :cond_58

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 80
    invoke-virtual {v10, v2, v14, v4, v3}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_2d

    :cond_58
    const/4 v4, 0x0

    .line 81
    invoke-virtual {v10, v2, v14, v4, v1}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_2d

    :cond_59
    const/4 v1, 0x5

    :cond_5a
    const/4 v4, 0x0

    goto :goto_2d

    :cond_5b
    :goto_2c
    move-object v2, v1

    move/from16 p15, v14

    const/4 v1, 0x5

    const/4 v4, 0x0

    move/from16 v23, p3

    :goto_2d
    const/4 v6, 0x5

    :goto_2e
    if-eqz v23, :cond_5f

    if-eqz p15, :cond_5f

    move-object/from16 v1, p11

    .line 82
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_5c

    .line 83
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v13

    move-object/from16 v3, p7

    goto :goto_2f

    :cond_5c
    move-object/from16 v3, p7

    const/4 v13, 0x0

    :goto_2f
    if-eq v15, v3, :cond_5f

    .line 84
    iget-boolean v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h:Z

    if-eqz v4, :cond_5e

    iget-boolean v4, v2, Landroidx/constraintlayout/core/SolverVariable;->g:Z

    if-eqz v4, :cond_5e

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v4, :cond_5e

    .line 85
    check-cast v4, Landroidx/constraintlayout/core/widgets/d;

    if-eqz p2, :cond_5d

    .line 86
    invoke-virtual {v4, v1}, Landroidx/constraintlayout/core/widgets/d;->p1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto :goto_30

    .line 87
    :cond_5d
    invoke-virtual {v4, v1}, Landroidx/constraintlayout/core/widgets/d;->u1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    :goto_30
    return-void

    .line 88
    :cond_5e
    invoke-virtual {v10, v3, v2, v13, v6}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_5f
    return-void

    :cond_60
    move-object/from16 v3, p7

    move-object v2, v1

    move/from16 p15, v14

    const/4 v4, 0x0

    move-object/from16 v1, p6

    move-object v14, v9

    move/from16 v5, v23

    const/4 v6, 0x2

    :goto_31
    if-ge v5, v6, :cond_65

    if-eqz p3, :cond_65

    if-eqz p15, :cond_65

    const/16 v5, 0x8

    .line 89
    invoke-virtual {v10, v14, v1, v4, v5}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    if-nez p2, :cond_62

    .line 90
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v1, :cond_61

    goto :goto_32

    :cond_61
    const/4 v13, 0x0

    goto :goto_33

    :cond_62
    :goto_32
    const/4 v13, 0x1

    :goto_33
    if-nez p2, :cond_64

    .line 91
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_64

    .line 92
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 93
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_63

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v1, v4

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_63

    const/4 v5, 0x1

    aget-object v1, v1, v5

    if-ne v1, v6, :cond_63

    const/4 v14, 0x1

    goto :goto_34

    :cond_63
    const/4 v14, 0x0

    goto :goto_34

    :cond_64
    move v14, v13

    :goto_34
    if-eqz v14, :cond_65

    const/16 v1, 0x8

    .line 94
    invoke-virtual {v10, v3, v2, v4, v1}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_65
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:I

    return v0
.end method

.method public A0(IIII)V
    .locals 3

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 2
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 3
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 4
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 5
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, p1, p2

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    if-ge p3, v0, :cond_1

    move p3, v0

    :cond_1
    const/4 v0, 0x1

    .line 7
    aget-object v2, p1, v0

    if-ne v2, v1, :cond_2

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    if-ge p4, v1, :cond_2

    move p4, v1

    .line 8
    :cond_2
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 9
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 10
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    if-ge p4, v1, :cond_3

    .line 11
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 12
    :cond_3
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    if-ge p3, v1, :cond_4

    .line 13
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 14
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    if-lez v1, :cond_5

    aget-object p1, p1, p2

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_5

    .line 15
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 16
    :cond_5
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    if-lez p1, :cond_6

    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p2, v0

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_6

    .line 17
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 18
    :cond_6
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    if-eq p3, p1, :cond_7

    .line 19
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    .line 20
    :cond_7
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    if-eq p4, p1, :cond_8

    .line 21
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:I

    :cond_8
    return-void
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:I

    return v0
.end method

.method public B0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    return-void
.end method

.method public C(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public C0(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    if-ge p1, v0, :cond_0

    .line 3
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    :cond_0
    return-void
.end method

.method public D()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public D0(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    return-void
.end method

.method public E()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public E0(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    return-void
.end method

.method public F()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    return v0
.end method

.method public F0(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    sub-int/2addr p2, p1

    .line 2
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 3
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    if-ge p2, p1, :cond_0

    .line 4
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    :cond_0
    return-void
.end method

.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    return v0
.end method

.method public G0(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public H(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    .line 2
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    .line 4
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public H0(IIIF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 2
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    const p2, 0x7fffffff

    if-ne p3, p2, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 4
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    :cond_1
    return-void
.end method

.method public I()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object v0
.end method

.method public I0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public J(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    .line 2
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    .line 4
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected J0(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public K()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    add-int/2addr v0, v1

    return v0
.end method

.method public K0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G:Z

    return-void
.end method

.method public L(I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/k;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public L0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    return-void
.end method

.method public M()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    return v0
.end method

.method public M0(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:I

    .line 2
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P0(Z)V

    return-void
.end method

.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:I

    return v0
.end method

.method public N0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public O()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public O0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public P()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    add-int/2addr v1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public P0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    return-void
.end method

.method public Q()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    return v0
.end method

.method public Q0(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    :goto_0
    return-void
.end method

.method public R()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    return v0
.end method

.method public R0(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    :goto_0
    return-void
.end method

.method public S()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/d;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroidx/constraintlayout/core/widgets/d;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/d;->C0:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    return v0
.end method

.method public S0(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 2
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    return-void
.end method

.method public T()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/d;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroidx/constraintlayout/core/widgets/d;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/d;->D0:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    return v0
.end method

.method public T0(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-void
.end method

.method public U()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    return v0
.end method

.method public U0(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    return-void
.end method

.method public V(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 2
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    add-int/2addr p1, v3

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    return v1
.end method

.method public V0(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:I

    return-void
.end method

.method public W()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public W0(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    sub-int/2addr p2, p1

    .line 2
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 3
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    if-ge p2, p1, :cond_0

    .line 4
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    :cond_0
    return-void
.end method

.method public X()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public X0(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public Y(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result p1

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p1, v2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result p1

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p1, v2

    if-lt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v1
.end method

.method public Y0(IIIF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 2
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    const p2, 0x7fffffff

    if-ne p3, p2, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 4
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    :cond_1
    return-void
.end method

.method public Z(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    .line 2
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p1, p2, p4, p5, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void
.end method

.method public Z0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public a1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    return-void
.end method

.method public b0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:Z

    return v0
.end method

.method public b1(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    if-ge p1, v0, :cond_0

    .line 3
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    :cond_0
    return-void
.end method

.method public c0(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public c1(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    :cond_0
    return-void
.end method

.method public d0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public d1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    return-void
.end method

.method public e(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Ljava/util/HashSet;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/d;",
            "Landroidx/constraintlayout/core/d;",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p5, :cond_1

    .line 1
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, p2, p0}, Landroidx/constraintlayout/core/widgets/h;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 3
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    .line 4
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/d;->K1(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/d;Z)V

    :cond_1
    if-nez p4, :cond_3

    .line 5
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 6
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Ljava/util/HashSet;IZ)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_6

    .line 9
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 10
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Ljava/util/HashSet;IZ)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_4

    .line 12
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Ljava/util/HashSet;IZ)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_5

    .line 15
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 16
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Ljava/util/HashSet;IZ)V

    goto :goto_3

    .line 17
    :cond_5
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_6

    .line 18
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Ljava/util/HashSet;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public e0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G:Z

    return v0
.end method

.method public e1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    return-void
.end method

.method f()Z
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/i;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public f1(ZZZZ)V
    .locals 3

    .line 1
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 3
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 4
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    if-ne p1, v1, :cond_1

    .line 5
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    div-float p1, p2, p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 6
    :cond_1
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    :cond_2
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    goto :goto_1

    .line 8
    :cond_3
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-nez p1, :cond_5

    .line 9
    :cond_4
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 10
    :cond_5
    :goto_1
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    if-ne p1, v1, :cond_8

    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-nez p1, :cond_8

    .line 13
    :cond_6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    goto :goto_2

    .line 15
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 16
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    div-float p1, p2, p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 17
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 18
    :cond_8
    :goto_2
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    if-ne p1, v1, :cond_a

    .line 19
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    if-lez p1, :cond_9

    iget p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    if-nez p3, :cond_9

    .line 20
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    .line 21
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    if-lez p1, :cond_a

    .line 22
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    div-float/2addr p2, p1

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 23
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    :cond_a
    :goto_3
    return-void
.end method

.method public g(Landroidx/constraintlayout/core/d;Z)V
    .locals 53

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 1
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v13

    .line 2
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v12

    .line 3
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v11

    .line 4
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v10

    .line 5
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    .line 6
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v8, 0x2

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    if-eqz v0, :cond_0

    .line 7
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v6

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v7

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_1
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    if-eq v3, v7, :cond_3

    if-eq v3, v8, :cond_2

    if-eq v3, v1, :cond_4

    move v5, v0

    move v4, v2

    goto :goto_3

    :cond_2
    move v5, v0

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    .line 10
    :goto_3
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    aget-boolean v2, v0, v6

    if-nez v2, :cond_5

    aget-boolean v0, v0, v7

    if-nez v0, :cond_5

    return-void

    .line 11
    :cond_5
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    const/4 v2, 0x5

    if-nez v0, :cond_6

    iget-boolean v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    if-eqz v8, :cond_c

    :cond_6
    if-eqz v0, :cond_8

    .line 12
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 13
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    if-eqz v4, :cond_8

    .line 14
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_8

    .line 15
    iget-boolean v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:Z

    if-eqz v8, :cond_7

    .line 16
    check-cast v0, Landroidx/constraintlayout/core/widgets/d;

    .line 17
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/d;->q1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 18
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/d;->p1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto :goto_4

    .line 19
    :cond_7
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {v14, v0, v12, v6, v2}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 20
    :cond_8
    :goto_4
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    if-eqz v0, :cond_b

    .line 21
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    invoke-virtual {v14, v11, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 22
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v10, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 23
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v9, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    :cond_9
    if-eqz v5, :cond_b

    .line 25
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_b

    .line 26
    iget-boolean v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i:Z

    if-eqz v8, :cond_a

    .line 27
    check-cast v0, Landroidx/constraintlayout/core/widgets/d;

    .line 28
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/d;->v1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 29
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/d;->u1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto :goto_5

    .line 30
    :cond_a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {v14, v0, v10, v6, v2}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 31
    :cond_b
    :goto_5
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    if-eqz v0, :cond_c

    .line 32
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 33
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    return-void

    .line 34
    :cond_c
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    const-wide/16 v17, 0x1

    if-eqz v0, :cond_d

    .line 35
    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->y:J

    add-long v1, v1, v17

    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->y:J

    :cond_d
    if-eqz p2, :cond_11

    .line 36
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/k;

    if-eqz v1, :cond_11

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    if-eqz v2, :cond_11

    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v7, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v7, :cond_11

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v1, :cond_11

    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v1, :cond_11

    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v1, :cond_11

    if-eqz v0, :cond_e

    .line 37
    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->r:J

    add-long v1, v1, v17

    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->r:J

    .line 38
    :cond_e
    iget v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 39
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 40
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v11, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 41
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v10, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 42
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/m;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v14, v9, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 43
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_10

    if-eqz v4, :cond_f

    .line 44
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0()Z

    move-result v0

    if-nez v0, :cond_f

    .line 45
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 46
    invoke-virtual {v14, v0, v12, v6, v3}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_f
    if-eqz v5, :cond_10

    .line 47
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0()Z

    move-result v0

    if-nez v0, :cond_10

    .line 48
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 49
    invoke-virtual {v14, v0, v10, v6, v3}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 50
    :cond_10
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 51
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    return-void

    :cond_11
    if-eqz v0, :cond_12

    .line 52
    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->s:J

    add-long v1, v1, v17

    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->s:J

    .line 53
    :cond_12
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_17

    .line 54
    invoke-direct {v15, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 55
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {v0, v15, v6}, Landroidx/constraintlayout/core/widgets/d;->m1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    const/4 v0, 0x1

    goto :goto_6

    .line 56
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0()Z

    move-result v0

    :goto_6
    const/4 v1, 0x1

    .line 57
    invoke-direct {v15, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 58
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v2, Landroidx/constraintlayout/core/widgets/d;

    invoke-virtual {v2, v15, v1}, Landroidx/constraintlayout/core/widgets/d;->m1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    const/4 v1, 0x1

    goto :goto_7

    .line 59
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0()Z

    move-result v1

    :goto_7
    if-nez v0, :cond_15

    if-eqz v4, :cond_15

    .line 60
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-eq v2, v3, :cond_15

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_15

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_15

    .line 61
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    const/4 v7, 0x1

    .line 62
    invoke-virtual {v14, v2, v12, v6, v7}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_15
    if-nez v1, :cond_16

    if-eqz v5, :cond_16

    .line 63
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-eq v2, v3, :cond_16

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_16

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_16

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_16

    .line 64
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    const/4 v7, 0x1

    .line 65
    invoke-virtual {v14, v2, v10, v6, v7}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_16
    move/from16 v29, v0

    move/from16 v28, v1

    goto :goto_8

    :cond_17
    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 66
    :goto_8
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 67
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    if-ge v0, v1, :cond_18

    goto :goto_9

    :cond_18
    move v1, v0

    .line 68
    :goto_9
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 69
    iget v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    if-ge v2, v7, :cond_19

    goto :goto_a

    :cond_19
    move v7, v2

    .line 70
    :goto_a
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v8, v6

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v22, v1

    if-eq v3, v6, :cond_1a

    const/4 v3, 0x1

    goto :goto_b

    :cond_1a
    const/4 v3, 0x0

    :goto_b
    const/16 v21, 0x1

    .line 71
    aget-object v1, v8, v21

    move/from16 v23, v7

    if-eq v1, v6, :cond_1b

    const/4 v1, 0x1

    goto :goto_c

    :cond_1b
    const/4 v1, 0x0

    .line 72
    :goto_c
    iget v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    iput v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    move-object/from16 v27, v9

    .line 73
    iget v9, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    iput v9, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    move-object/from16 v30, v10

    .line 74
    iget v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    move-object/from16 v31, v11

    .line 75
    iget v11, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    const/16 v24, 0x0

    const/16 v25, 0x4

    move-object/from16 v32, v12

    cmpl-float v24, v9, v24

    if-lez v24, :cond_25

    .line 76
    iget v12, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    move-object/from16 v33, v13

    const/16 v13, 0x8

    if-eq v12, v13, :cond_26

    const/4 v12, 0x0

    .line 77
    aget-object v13, v8, v12

    if-ne v13, v6, :cond_1c

    if-nez v10, :cond_1c

    const/4 v10, 0x3

    :cond_1c
    const/4 v12, 0x1

    .line 78
    aget-object v13, v8, v12

    if-ne v13, v6, :cond_1d

    if-nez v11, :cond_1d

    const/4 v11, 0x3

    :cond_1d
    const/4 v13, 0x0

    .line 79
    aget-object v14, v8, v13

    if-ne v14, v6, :cond_1e

    aget-object v13, v8, v12

    if-ne v13, v6, :cond_1e

    const/4 v12, 0x3

    if-ne v10, v12, :cond_1f

    if-ne v11, v12, :cond_1f

    .line 80
    invoke-virtual {v15, v4, v5, v3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f1(ZZZZ)V

    goto :goto_d

    :cond_1e
    const/4 v12, 0x3

    :cond_1f
    const/4 v1, 0x0

    .line 81
    aget-object v3, v8, v1

    if-ne v3, v6, :cond_21

    if-ne v10, v12, :cond_21

    move-object v3, v8

    .line 82
    iput v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    int-to-float v0, v2

    mul-float v9, v9, v0

    float-to-int v1, v9

    const/4 v2, 0x1

    .line 83
    aget-object v0, v3, v2

    if-eq v0, v6, :cond_20

    move/from16 v36, v11

    move/from16 v35, v23

    const/4 v0, 0x0

    const/16 v34, 0x0

    const/16 v37, 0x4

    goto :goto_f

    :cond_20
    move/from16 v37, v10

    move/from16 v36, v11

    move/from16 v35, v23

    const/4 v0, 0x0

    goto :goto_e

    :cond_21
    move-object v3, v8

    const/4 v2, 0x1

    .line 84
    aget-object v1, v3, v2

    if-ne v1, v6, :cond_24

    const/4 v1, 0x3

    if-ne v11, v1, :cond_24

    .line 85
    iput v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    const/4 v1, -0x1

    if-ne v7, v1, :cond_22

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v9

    .line 86
    iput v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 87
    :cond_22
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v7, v1

    const/4 v0, 0x0

    .line 88
    aget-object v1, v3, v0

    move/from16 v35, v7

    move/from16 v37, v10

    if-eq v1, v6, :cond_23

    move/from16 v1, v22

    const/16 v34, 0x0

    const/16 v36, 0x4

    goto :goto_f

    :cond_23
    move/from16 v36, v11

    move/from16 v1, v22

    goto :goto_e

    :cond_24
    :goto_d
    const/4 v0, 0x0

    move/from16 v37, v10

    move/from16 v36, v11

    move/from16 v1, v22

    move/from16 v35, v23

    :goto_e
    const/16 v34, 0x1

    goto :goto_f

    :cond_25
    move-object/from16 v33, v13

    :cond_26
    const/4 v0, 0x0

    move/from16 v37, v10

    move/from16 v36, v11

    move/from16 v1, v22

    move/from16 v35, v23

    const/16 v34, 0x0

    .line 89
    :goto_f
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    aput v37, v2, v0

    const/4 v0, 0x1

    .line 90
    aput v36, v2, v0

    if-eqz v34, :cond_28

    .line 91
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    const/4 v2, -0x1

    if-eqz v0, :cond_27

    if-ne v0, v2, :cond_29

    :cond_27
    const/16 v20, 0x1

    goto :goto_10

    :cond_28
    const/4 v2, -0x1

    :cond_29
    const/16 v20, 0x0

    :goto_10
    if-eqz v34, :cond_2b

    .line 92
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2a

    if-ne v0, v2, :cond_2b

    :cond_2a
    const/16 v38, 0x1

    goto :goto_11

    :cond_2b
    const/16 v38, 0x0

    .line 93
    :goto_11
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v14, :cond_2c

    instance-of v0, v15, Landroidx/constraintlayout/core/widgets/d;

    if-eqz v0, :cond_2c

    const/4 v9, 0x1

    goto :goto_12

    :cond_2c
    const/4 v9, 0x0

    :goto_12
    if-eqz v9, :cond_2d

    const/4 v13, 0x0

    goto :goto_13

    :cond_2d
    move v13, v1

    .line 94
    :goto_13
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v39, v0, 0x1

    .line 95
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    const/4 v2, 0x0

    aget-boolean v22, v0, v2

    .line 96
    aget-boolean v40, v0, v1

    .line 97
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p:I

    const/16 v41, 0x0

    const/4 v8, 0x2

    if-eq v0, v8, :cond_35

    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    if-nez v0, :cond_35

    if-eqz p2, :cond_31

    .line 98
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/k;

    if-eqz v0, :cond_31

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_31

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-nez v0, :cond_2e

    goto :goto_14

    :cond_2e
    if-eqz p2, :cond_30

    .line 99
    iget v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v12, p1

    move-object/from16 v11, v33

    invoke-virtual {v12, v11, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 100
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v10, v32

    invoke-virtual {v12, v10, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 101
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_2f

    if-eqz v4, :cond_2f

    .line 102
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 103
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/16 v3, 0x8

    .line 104
    invoke-virtual {v12, v0, v10, v1, v3}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_2f
    move/from16 v43, v4

    move/from16 v47, v5

    move-object/from16 v48, v6

    move-object/from16 v52, v14

    move-object/from16 v49, v27

    move-object/from16 v50, v30

    move-object/from16 v51, v31

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_19

    :cond_30
    move-object/from16 v12, p1

    goto/16 :goto_18

    :cond_31
    :goto_14
    move-object/from16 v12, p1

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    const/16 v3, 0x8

    .line 105
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_32

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    move-object v7, v0

    goto :goto_15

    :cond_32
    move-object/from16 v7, v41

    .line 106
    :goto_15
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_33

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_16

    :cond_33
    move-object/from16 v16, v41

    .line 107
    :goto_16
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    const/16 v17, 0x0

    aget-boolean v18, v0, v17

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v23, v0, v17

    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v33, v2

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    move/from16 v42, v2

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    aget v44, v3, v17

    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    const/16 v21, 0x1

    aget-object v0, v0, v21

    if-ne v0, v6, :cond_34

    const/16 v45, 0x1

    goto :goto_17

    :cond_34
    const/16 v45, 0x0

    :goto_17
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    move/from16 v24, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    move/from16 v25, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v46, v1

    move-object/from16 v1, p1

    move-object/from16 v19, v33

    move/from16 v32, v42

    move/from16 v33, v2

    const/4 v2, 0x1

    move/from16 v42, v3

    move v3, v4

    move/from16 v43, v4

    move v4, v5

    move/from16 v47, v5

    move/from16 v5, v18

    move-object/from16 v48, v6

    move-object/from16 v6, v16

    move-object/from16 v8, v23

    move-object/from16 v49, v27

    move-object/from16 v16, v10

    move-object/from16 v50, v30

    move-object/from16 v10, v46

    move-object/from16 v17, v11

    move-object/from16 v51, v31

    move-object/from16 v11, v19

    move-object/from16 v30, v16

    move/from16 v12, v32

    move-object/from16 v31, v17

    move-object/from16 v52, v14

    move/from16 v14, v33

    move/from16 v15, v44

    move/from16 v16, v42

    move/from16 v17, v20

    move/from16 v18, v45

    move/from16 v19, v29

    move/from16 v20, v28

    move/from16 v21, v22

    move/from16 v22, v37

    move/from16 v23, v36

    move/from16 v27, v39

    invoke-direct/range {v0 .. v27}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i(Landroidx/constraintlayout/core/d;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    goto :goto_19

    :cond_35
    :goto_18
    move/from16 v43, v4

    move/from16 v47, v5

    move-object/from16 v48, v6

    move-object/from16 v52, v14

    move-object/from16 v49, v27

    move-object/from16 v50, v30

    move-object/from16 v51, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v33

    :goto_19
    if-eqz p2, :cond_39

    move-object/from16 v15, p0

    .line 108
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    if-eqz v0, :cond_38

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_38

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v0, :cond_38

    .line 109
    iget v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v51

    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 110
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v12, v50

    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 111
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/m;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v1, v49

    invoke-virtual {v14, v1, v0}, Landroidx/constraintlayout/core/d;->f(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 112
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_37

    if-nez v28, :cond_37

    if-eqz v47, :cond_37

    .line 113
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    const/4 v11, 0x1

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_36

    .line 114
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    .line 115
    invoke-virtual {v14, v0, v12, v10, v2}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_1a

    :cond_36
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_1a

    :cond_37
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_1a
    const/4 v7, 0x0

    goto :goto_1c

    :cond_38
    move-object/from16 v14, p1

    move-object/from16 v1, v49

    move-object/from16 v12, v50

    move-object/from16 v13, v51

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_1b

    :cond_39
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v49

    move-object/from16 v12, v50

    move-object/from16 v13, v51

    :goto_1b
    const/4 v7, 0x1

    .line 116
    :goto_1c
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3a

    const/4 v6, 0x0

    goto :goto_1d

    :cond_3a
    move v6, v7

    :goto_1d
    if-eqz v6, :cond_45

    .line 117
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    if-nez v0, :cond_45

    .line 118
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v11

    move-object/from16 v3, v52

    if-ne v0, v3, :cond_3b

    instance-of v0, v15, Landroidx/constraintlayout/core/widgets/d;

    if-eqz v0, :cond_3b

    const/4 v9, 0x1

    goto :goto_1e

    :cond_3b
    const/4 v9, 0x0

    :goto_1e
    if-eqz v9, :cond_3c

    const/16 v35, 0x0

    .line 119
    :cond_3c
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_3d

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    move-object v7, v0

    goto :goto_1f

    :cond_3d
    move-object/from16 v7, v41

    .line 120
    :goto_1f
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_3e

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    move-object v6, v0

    goto :goto_20

    :cond_3e
    move-object/from16 v6, v41

    .line 121
    :goto_20
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    if-gtz v0, :cond_3f

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-ne v0, v2, :cond_43

    .line 122
    :cond_3f
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_41

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    .line 124
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 125
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v3

    .line 126
    invoke-virtual {v14, v1, v0, v3, v2}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    if-eqz v47, :cond_40

    .line 127
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/4 v1, 0x5

    .line 128
    invoke-virtual {v14, v7, v0, v10, v1}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_40
    const/16 v27, 0x0

    goto :goto_22

    .line 129
    :cond_41
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    if-ne v3, v2, :cond_42

    .line 130
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    goto :goto_21

    .line 131
    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/d;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;

    :cond_43
    :goto_21
    move/from16 v27, v39

    .line 132
    :goto_22
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    aget-boolean v5, v0, v11

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v0, v11

    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    aget v16, v10, v11

    iget v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    const/16 v17, 0x0

    aget-object v0, v0, v17

    move-object/from16 v11, v48

    if-ne v0, v11, :cond_44

    const/16 v18, 0x1

    goto :goto_23

    :cond_44
    const/16 v18, 0x0

    :goto_23
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    move/from16 v24, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    move/from16 v25, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v20, v2

    const/4 v2, 0x0

    move-object v11, v3

    move/from16 v3, v47

    move-object/from16 v21, v4

    move/from16 v4, v43

    move/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v32, v12

    move/from16 v12, v19

    move-object/from16 v33, v13

    move/from16 v13, v35

    move/from16 v14, v20

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v38

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v40

    move/from16 v22, v36

    move/from16 v23, v37

    invoke-direct/range {v0 .. v27}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i(Landroidx/constraintlayout/core/d;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    goto :goto_24

    :cond_45
    move-object/from16 v32, v12

    move-object/from16 v33, v13

    :goto_24
    if-eqz v34, :cond_47

    const/16 v6, 0x8

    move-object/from16 v7, p0

    .line 133
    iget v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_46

    .line 134
    iget v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/d;->k(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V

    goto :goto_25

    .line 135
    :cond_46
    iget v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    const/16 v6, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/d;->k(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V

    goto :goto_25

    :cond_47
    move-object/from16 v7, p0

    .line 136
    :goto_25
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->n()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 137
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    iget v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Landroidx/constraintlayout/core/d;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V

    :cond_48
    const/4 v0, 0x0

    .line 138
    iput-boolean v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 139
    iput-boolean v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    return-void
.end method

.method public g0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    return v0
.end method

.method public g1(ZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/k;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->k()Z

    move-result v0

    and-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->k()Z

    move-result v0

    and-int/2addr p2, v0

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/k;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 4
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 5
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 6
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    sub-int v4, v0, v1

    sub-int v5, v2, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v1, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v2, v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    sub-int/2addr v0, v1

    sub-int/2addr v2, v3

    if-eqz p1, :cond_2

    .line 7
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 9
    :cond_3
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    .line 10
    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 11
    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    return-void

    :cond_4
    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v6

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v1, :cond_5

    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    if-ge v0, p1, :cond_5

    move v0, p1

    .line 13
    :cond_5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 14
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    if-ge v0, p1, :cond_6

    .line 15
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    :cond_6
    if-eqz p2, :cond_8

    .line 16
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_7

    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    if-ge v2, p1, :cond_7

    move v2, p1

    .line 17
    :cond_7
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 18
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    if-ge v2, p1, :cond_8

    .line 19
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    :cond_8
    return-void
.end method

.method public h()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h1(Landroidx/constraintlayout/core/d;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/d;->y(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/d;->y(Ljava/lang/Object;)I

    move-result v1

    .line 3
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/d;->y(Ljava/lang/Object;)I

    move-result v2

    .line 4
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/d;->y(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_0

    .line 5
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/k;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v5, :cond_0

    .line 6
    iget v0, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 7
    iget v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    if-eqz p2, :cond_1

    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v4, :cond_1

    .line 9
    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 10
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    :cond_1
    sub-int p2, v2, v0

    sub-int v3, p1, v1

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq v0, p2, :cond_2

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-eq v2, v3, :cond_2

    if-eq p1, p2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    :cond_3
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A0(IIII)V

    return-void
.end method

.method public i0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j(Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V
    .locals 6

    .line 1
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 2
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:F

    return-void
.end method

.method public j0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k(Landroidx/constraintlayout/core/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    :cond_0
    return-void
.end method

.method public k0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:Z

    return v0
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/k;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/k;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/k;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/m;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/m;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/m;

    :cond_1
    return-void
.end method

.method public l0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:Z

    return-void
.end method

.method public m(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .locals 2

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:Z

    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    return v0
.end method

.method public n0()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    aget-object v0, v0, v4

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public o(I)F
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    return p1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public o0()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->p()V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->p()V

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->p()V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->p()V

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->p()V

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->p()V

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->p()V

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->p()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:F

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 12
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 13
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 15
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 16
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 17
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 18
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 19
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 20
    sget v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t0:F

    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 21
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 22
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    .line 23
    aput-object v4, v3, v5

    .line 24
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/Object;

    .line 25
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 26
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:Ljava/lang/String;

    .line 27
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    .line 28
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0:I

    .line 29
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 30
    aput v3, v0, v5

    .line 31
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p:I

    .line 32
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 33
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    .line 34
    aput v3, v0, v5

    .line 35
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s:I

    .line 36
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 39
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 40
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 41
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 42
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 43
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:I

    .line 44
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 45
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:[Z

    aput-boolean v5, v0, v2

    .line 46
    aput-boolean v5, v0, v5

    .line 47
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:Z

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:[Z

    aput-boolean v2, v0, v2

    .line 49
    aput-boolean v2, v0, v5

    .line 50
    iput-boolean v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    aput v2, v0, v2

    .line 52
    aput v2, v0, v5

    .line 53
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j:I

    .line 54
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:I

    return-void
.end method

.method public p()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public p0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:Z

    .line 4
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:Z

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->q()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/Object;

    return-object v0
.end method

.method public q0(Landroidx/constraintlayout/core/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->r(Landroidx/constraintlayout/core/c;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->r(Landroidx/constraintlayout/core/c;)V

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->r(Landroidx/constraintlayout/core/c;)V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->r(Landroidx/constraintlayout/core/c;)V

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->r(Landroidx/constraintlayout/core/c;)V

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->r(Landroidx/constraintlayout/core/c;)V

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->r(Landroidx/constraintlayout/core/c;)V

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->r(Landroidx/constraintlayout/core/c;)V

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    return-object v0
.end method

.method public r0(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    return-void
.end method

.method public s(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public s0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/Object;

    return-void
.end method

.method public t()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    return v0
.end method

.method public t0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    return v0
.end method

.method public u0(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_3

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_3

    .line 4
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    .line 5
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "H"

    .line 6
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    add-int/lit8 v4, v3, 0x1

    :cond_3
    const/16 v3, 0x3a

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_5

    .line 8
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 11
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 12
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_6

    cmpl-float v3, p1, v0

    if-lez v3, :cond_6

    if-ne v1, v5, :cond_4

    div-float/2addr p1, v2

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_4
    div-float/2addr v2, p1

    .line 14
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 17
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    const/4 p1, 0x0

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 18
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 19
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    :cond_7
    return-void

    .line 20
    :cond_8
    :goto_2
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    return-void
.end method

.method public v()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    return v0
.end method

.method public v0(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    sub-int v0, p1, v0

    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    add-int/2addr v1, v0

    .line 4
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(I)V

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(I)V

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(I)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    return-void
.end method

.method public w()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    return v0
.end method

.method public w0(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(I)V

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(I)V

    .line 4
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    sub-int/2addr p2, p1

    .line 5
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m0:I

    return v0
.end method

.method public x0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(I)V

    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    return-void
.end method

.method public y()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public y0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(I)V

    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    return-void
.end method

.method public z()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    add-int/2addr v1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    .line 4
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public z0(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(I)V

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(I)V

    .line 4
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    sub-int/2addr p2, p1

    .line 5
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 6
    iget-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(I)V

    :cond_1
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    return-void
.end method
