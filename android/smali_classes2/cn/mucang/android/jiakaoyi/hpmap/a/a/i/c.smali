.class public Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/c;
.super Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Lcn/mucang/android/jiakaoyi/signal/pos/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/c;->i:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/c;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/c;->k:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public d()Lcn/mucang/android/jiakaoyi/hpmap/c/a;
    .locals 12

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoChangDiRenderModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoChangDiRenderModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->key:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoChangDiRenderModel;->solidLines:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoChangDiRenderModel;->dashLines:Ljava/util/List;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/c;->i:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 8
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_1

    .line 9
    new-instance v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v10, v7, 0x1

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v9, v11}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 10
    iput-wide v3, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    if-nez v7, :cond_0

    .line 11
    iget-object v7, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    iget-object v7, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v10

    goto :goto_1

    .line 13
    :cond_1
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoChangDiRenderModel;->solidLines:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/c;->j:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 15
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/c;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 17
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_4

    .line 18
    new-instance v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v10, v7, 0x1

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v9, v11}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 19
    iput-wide v3, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    if-nez v7, :cond_3

    .line 20
    iget-object v7, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_3
    iget-object v7, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v10

    goto :goto_3

    .line 22
    :cond_4
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoChangDiRenderModel;->dashLines:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->mapName:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public k()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public o()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ChangDi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
