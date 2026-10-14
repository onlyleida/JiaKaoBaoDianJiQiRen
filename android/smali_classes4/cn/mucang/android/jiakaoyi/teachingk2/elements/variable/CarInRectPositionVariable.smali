.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;
.super Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/a;


# static fields
.field public static final Left:I = 0x1

.field public static final Middle:I = 0x0

.field public static final Right:I = 0x2


# instance fields
.field public point1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public point2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public point3:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public point4:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public position:I

.field public transient rect:Lcn/mucang/android/jiakaoyi/signal/pos/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;-><init>()V

    const/16 v0, 0x37

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->type:I

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

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->point1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->point2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->point3:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x6

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->point4:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->point1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->point2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->point3:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->rect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    return-void
.end method
