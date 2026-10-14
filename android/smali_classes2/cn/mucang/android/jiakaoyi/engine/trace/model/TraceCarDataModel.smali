.class public Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;
.super Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;
.source "SourceFile"


# instance fields
.field public carPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public degree:D

.field public leftMirrorPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public pitch:D

.field public rightMirrorPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->CarData:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->tp:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->carPoints:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->degree:D

    .line 3
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->pitch:D

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->leftMirrorPoints:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->rightMirrorPoints:Ljava/util/List;

    return-void
.end method

.method public set(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->carPoints:Ljava/util/List;

    .line 2
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->degree:D

    .line 3
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->pitch:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->pitch:D

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelLeftFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelLeftBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelRightFrontInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->wheelRightBackInner:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->leftMirrorPoints:Ljava/util/List;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->leftMirrorPoints:Ljava/util/List;

    .line 15
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rightMirrorPoints:Ljava/util/List;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarDataModel;->rightMirrorPoints:Ljava/util/List;

    return-object p0
.end method
