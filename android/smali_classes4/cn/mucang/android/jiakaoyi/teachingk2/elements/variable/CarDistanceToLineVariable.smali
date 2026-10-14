.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/a;


# instance fields
.field public accuracy:F

.field public distance:F

.field public distanceMax:F

.field public endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public endPointIndex:I

.field public mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

.field public startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public startPointIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->BigThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const/16 v0, 0x3e

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    const/high16 v0, 0x41200000    # 10.0f

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->accuracy:F

    return-void
.end method

.method public constructor <init>(IIFLcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->BigThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    .line 8
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->startPointIndex:I

    .line 9
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->endPointIndex:I

    .line 10
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->distance:F

    .line 11
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const/16 p1, 0x3e

    .line 12
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    const/high16 p1, 0x41200000    # 10.0f

    .line 14
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->accuracy:F

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
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->startPointIndex:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->endPointIndex:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method
