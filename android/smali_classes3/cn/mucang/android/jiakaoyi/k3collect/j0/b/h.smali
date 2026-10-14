.class public Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;
.super Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
.source "SourceFile"


# instance fields
.field public d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/model/Line;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/model/Line;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public i:D

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->l:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->l:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->l:I

    if-ge v0, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method
