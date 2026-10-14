.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public leftDistance:D

.field public leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

.field public rightDistance:D

.field public rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->leftDistance:D

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->rightDistance:D

    return-void
.end method


# virtual methods
.method public emptyResult()Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;
    .locals 2

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->leftDistance:D

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->rightDistance:D

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p0
.end method

.method public setResult(DDLcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->leftDistance:D

    .line 2
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->rightDistance:D

    .line 3
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 4
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p0
.end method
