.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/c;->d:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/c;->a()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    invoke-virtual {v0, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(DD)D

    return-void
.end method

.method private a()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v7, v2, v5

    iget-wide v9, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v11, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v13, v9, v11

    mul-double v7, v7, v13

    iget-wide v13, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v15, v5, v13

    iget-wide v0, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v17, v0, v9

    mul-double v15, v15, v17

    sub-double/2addr v7, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v15

    const-wide/16 v15, 0x0

    cmpl-double v4, v7, v15

    if-nez v4, :cond_0

    .line 2
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-double/2addr v11, v9

    add-double/2addr v11, v0

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    div-double/2addr v11, v0

    add-double/2addr v13, v5

    add-double/2addr v13, v2

    div-double/2addr v13, v0

    invoke-direct {v4, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object v4

    :cond_0
    mul-double v15, v11, v11

    mul-double v17, v13, v13

    add-double v15, v15, v17

    mul-double v17, v9, v9

    mul-double v19, v5, v5

    add-double v17, v17, v19

    mul-double v19, v0, v0

    mul-double v21, v2, v2

    add-double v19, v19, v21

    sub-double v15, v17, v15

    sub-double v19, v19, v17

    sub-double/2addr v2, v5

    mul-double v2, v2, v15

    sub-double/2addr v5, v13

    mul-double v5, v5, v19

    sub-double/2addr v2, v5

    sub-double v4, v9, v11

    mul-double v4, v4, v19

    sub-double/2addr v0, v9

    mul-double v0, v0, v15

    sub-double/2addr v4, v0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    div-double/2addr v2, v7

    div-double/2addr v4, v7

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object v0
.end method
