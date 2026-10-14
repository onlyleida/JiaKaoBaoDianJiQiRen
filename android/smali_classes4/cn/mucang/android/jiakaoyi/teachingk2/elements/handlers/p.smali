.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field private b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/p;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/p;->a:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/p;->c(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public c(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-nez v3, :cond_0

    return v4

    .line 2
    :cond_0
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/p;->a:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-nez v3, :cond_2

    .line 3
    invoke-static/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v3

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/p;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 4
    invoke-interface/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->j()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x3

    .line 5
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x4

    .line 6
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v6, 0x6

    .line 7
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/p;->b:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/signal/utils/b;->e:Z

    .line 9
    invoke-virtual {v5, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v3, v5

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    .line 10
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;->x:D

    iget-wide v8, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;->y:D

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 11
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-wide v7, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v9, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;->range:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    iget v10, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->right:I

    int-to-double v10, v10

    sub-double v11, v7, v10

    iget-wide v13, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget v5, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->bottom:I

    int-to-double v4, v5

    sub-double v4, v13, v4

    iget v10, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->left:I

    move/from16 p3, v2

    move/from16 p5, v3

    int-to-double v2, v10

    add-double v15, v7, v2

    iget v2, v9, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;->top:I

    int-to-double v2, v2

    add-double v17, v13, v2

    move-object v10, v6

    move-wide v13, v4

    invoke-direct/range {v10 .. v18}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/p;->a:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 12
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;->degree:D

    double-to-float v2, v2

    if-nez p3, :cond_1

    neg-float v2, v2

    .line 13
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    :cond_1
    add-float v3, p5, v2

    .line 14
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/p;->c:F

    :cond_2
    move-object/from16 v2, p2

    .line 15
    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/p;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/p;->c:F

    .line 16
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float v2, v4

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    sub-float/2addr v3, v2

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;->degreeRadius:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    return v4
.end method
