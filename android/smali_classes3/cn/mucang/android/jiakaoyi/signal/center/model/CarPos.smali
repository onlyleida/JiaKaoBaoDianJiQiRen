.class public Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public L:D

.field public back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field public bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field public carPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public degree:D

.field public front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public headerPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public lastCarRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public lastCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public lastRearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public leftBackTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public leftFrontTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public leftMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public leftMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public leftMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public leftMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public leftMirrorPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public main:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public pitch:D

.field public rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public rightBackTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public rightFrontTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public rightMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public rightMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public rightMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public rightMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public rightMirrorPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public tailPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelTouchWidth:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    return-object v0
.end method

.method public set(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->main:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->main:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_2

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    :cond_2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    :cond_3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_4

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    :cond_4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_5

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 15
    :cond_5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_6

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 17
    :cond_6
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_7

    .line 18
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    :cond_7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_8

    .line 20
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    :cond_8
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_9

    .line 22
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    :cond_9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_a

    .line 24
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    :cond_a
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_b

    .line 26
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 27
    :cond_b
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_c

    .line 28
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 29
    :cond_c
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_d

    .line 30
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 31
    :cond_d
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_e

    .line 32
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 33
    :cond_e
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_f

    .line 34
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 35
    :cond_f
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftFrontTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_10

    .line 36
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/c;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftFrontTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 37
    :cond_10
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftBackTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_11

    .line 38
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/c;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftBackTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 39
    :cond_11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightFrontTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_12

    .line 40
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/c;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightFrontTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 41
    :cond_12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightBackTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_13

    .line 42
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/c;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightBackTouchRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 43
    :cond_13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_14

    .line 44
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 45
    :cond_14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_15

    .line 46
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 47
    :cond_15
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_16

    .line 48
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 49
    :cond_16
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_17

    .line 50
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 51
    :cond_17
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_18

    .line 52
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 53
    :cond_18
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_19

    .line 54
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 55
    :cond_19
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1a

    .line 56
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 57
    :cond_1a
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1b

    .line 58
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 59
    :cond_1b
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1c

    .line 60
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 61
    :cond_1c
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1d

    .line 62
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 63
    :cond_1d
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_1e

    .line 64
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/c;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 65
    :cond_1e
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCarRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_1f

    .line 66
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/c;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCarRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 67
    :cond_1f
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-eqz v0, :cond_20

    .line 68
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/a;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    const/high16 v0, 0x43960000    # 300.0f

    .line 69
    invoke-virtual {v1, v0, v0, v0, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->m(FFFF)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bigBound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 70
    :cond_20
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->headerPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_21

    .line 71
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->headerPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 72
    :cond_21
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->tailPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_22

    .line 73
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->tailPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 74
    :cond_22
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    if-eqz v0, :cond_23

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    .line 76
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 77
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_23
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    if-eqz v0, :cond_24

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    .line 80
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 81
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 82
    :cond_24
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_25

    .line 83
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 84
    :cond_25
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastRearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_26

    .line 85
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastRearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 86
    :cond_26
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    .line 87
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->pitch:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->pitch:D

    .line 88
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelTouchWidth:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelTouchWidth:D

    .line 89
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->L:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarPos{carPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", front="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", back="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", wheelLeftFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wheelLeftBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wheelRightFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wheelRightBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wheelLeftFrontLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wheelLeftBackLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wheelRightFrontLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wheelRightBackLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headerPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->headerPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tailPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->tailPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->pitch:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", carRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", leftMirrorPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightMirrorPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", leftMirrorInSideLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", leftMirrorOutSideLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightMirrorInSideLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorInSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightMirrorOutSideLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSideLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", leftMirrorInSide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", leftMirrorOutSide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightMirrorInSide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorInSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightMirrorOutSide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorOutSide:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
