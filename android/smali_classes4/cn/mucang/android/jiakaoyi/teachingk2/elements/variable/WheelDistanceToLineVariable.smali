.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/a;
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/b;


# instance fields
.field public accuracy:F

.field public distance:F

.field public distanceMax:F

.field public endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public endPointIndex:I

.field public mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

.field public startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public startPointIndex:I

.field public wheel:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public wheelIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Equal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const/16 v0, 0x18

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    return-void
.end method


# virtual methods
.method public convertCoordinate(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->startPointIndex:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->endPointIndex:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method public wheelConvert()V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->wheelIndex:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->parse(I)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->wheel:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-void
.end method
