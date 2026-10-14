.class public Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;
.super Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
.source "SourceFile"


# instance fields
.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:D

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/model/Line;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcn/mucang/android/jiakaoyi/signal/pos/c;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    sget-object v3, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->n:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
