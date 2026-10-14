.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/a;


# instance fields
.field public point1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public point1Index:I

.field public point2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public point2Index:I

.field public point3:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public point3Index:I

.field public point4:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public point4Index:I

.field public transient rect:Lcn/mucang/android/jiakaoyi/signal/pos/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/16 v0, 0x36

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    return-void
.end method


# virtual methods
.method public convertCoordinate(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->point1Index:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->point1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->point2Index:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->point2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->point3Index:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->point3:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->point4Index:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->point4:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->point1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->point2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->point3:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;->rect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    return-void
.end method
