.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public leftEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

.field public leftStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public rightEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

.field public rightStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emptyResult()Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p0
.end method

.method public leftBianDao(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0
.end method

.method public rightBianDao(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p0
.end method
