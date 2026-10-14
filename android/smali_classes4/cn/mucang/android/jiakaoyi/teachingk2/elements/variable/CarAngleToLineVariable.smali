.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/a;


# instance fields
.field public accuracy:F

.field public degree:F

.field public endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public endPointIndex:I

.field public lineDegree:F

.field public startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public startPointIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const v0, -0x39e3c000    # -10000.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->lineDegree:F

    const/16 v0, 0x34

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    const/high16 v0, 0x40a00000    # 5.0f

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->accuracy:F

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
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->startPointIndex:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->endPointIndex:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;->endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method
