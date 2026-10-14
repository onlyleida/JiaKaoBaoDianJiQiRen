.class public abstract Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_DURATION:I = 0xfa

.field public static final INTERPOLATOR_ACCELERATE:I = 0x1

.field public static final INTERPOLATOR_ACCELERATE_DECELERATE:I = 0x3

.field public static final INTERPOLATOR_BOUNCE:I = 0x4

.field public static final INTERPOLATOR_DECELERATE:I = 0x2

.field public static final INTERPOLATOR_DOUBLE_RAISE:I = 0x6

.field public static final INTERPOLATOR_LINEAR:I = 0x0

.field public static final INTERPOLATOR_OVERSHOOT:I = 0x5

.field public static final INVALIDE_VALUE:I = -0x270f


# instance fields
.field protected duration:I

.field protected isOver:Z

.field protected offsetTime:J

.field protected startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 2
    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->startTime:J

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->offsetTime:J

    return-void
.end method


# virtual methods
.method public abstract doAnimation(Ljava/lang/Object;)V
.end method

.method public isOver()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
