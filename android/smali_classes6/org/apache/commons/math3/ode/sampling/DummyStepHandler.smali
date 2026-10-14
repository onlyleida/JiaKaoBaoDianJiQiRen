.class public Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$LazyHolder;->access$000()Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$LazyHolder;->access$000()Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 0

    return-void
.end method

.method public init(D[DD)V
    .locals 0

    return-void
.end method
