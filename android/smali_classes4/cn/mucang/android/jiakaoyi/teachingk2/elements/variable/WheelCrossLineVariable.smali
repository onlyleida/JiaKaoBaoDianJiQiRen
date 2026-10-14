.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/a;
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/b;


# instance fields
.field public endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public endPointIndex:I

.field public startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public startPointIndex:I

.field public wheelIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public wheels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/16 v0, 0x19

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    const/4 v0, 0x1

    .line 3
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
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;->startPointIndex:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;->startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;->endPointIndex:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;->endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method public wheelConvert()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;->wheels:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;->wheelIndex:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/i0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;->wheels:Ljava/util/List;

    :cond_0
    return-void
.end method
