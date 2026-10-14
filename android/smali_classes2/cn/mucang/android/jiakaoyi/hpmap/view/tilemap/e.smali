.class public Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# instance fields
.field private i:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field private j:Z

.field private final k:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->j:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->l:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->m:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->n:Ljava/util/List;

    const/4 v1, -0x2

    .line 6
    iput v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/framework/utils/o0;->b(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/tile/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->o()V

    .line 10
    new-instance p3, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

    invoke-direct {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

    .line 11
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/a;

    invoke-direct {p2, p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->j(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f$b;)V

    .line 12
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e$a;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e$a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;)V

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;)Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

    return-object p0
.end method

.method private j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    .line 3
    iget v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;->scale:I

    if-lt v3, v0, :cond_0

    .line 4
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->o:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    .line 6
    iget v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;->scale:I

    if-lt v0, v3, :cond_2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->o:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    if-eq v3, v2, :cond_2

    .line 7
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->o:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private synthetic k(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->r()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/b;

    invoke-direct {v1, p0, p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic m(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->i:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->isVisible(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->i(Ljava/util/List;)V

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->p(Ljava/util/List;)V

    .line 7
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method

.method private o()V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/o0;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u74e6\u7247\u5730\u56fe\u5c42\u7ea7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    const-class v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileParam;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileParam;

    .line 6
    new-instance v12, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    iget v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileParam;->scale:I

    invoke-direct {v12, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;-><init>(I)V

    .line 7
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->n:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v13, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;

    invoke-direct {v13}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;-><init>()V

    .line 9
    iget v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileParam;->row:I

    iput v4, v13, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;->rows:I

    .line 10
    iget v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileParam;->column:I

    iput v5, v13, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;->cols:I

    .line 11
    iget v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileParam;->textureSize:I

    iput v6, v13, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;->tileSize:I

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x1

    aput v5, v6, v7

    aput v4, v6, v3

    .line 12
    const-class v4, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    iput-object v4, v13, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;->maps:[[Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    const/4 v14, 0x0

    .line 13
    :goto_1
    iget-object v4, v13, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;->maps:[[Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    array-length v4, v4

    if-ge v14, v4, :cond_1

    const/4 v15, 0x0

    .line 14
    :goto_2
    iget-object v4, v13, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;->maps:[[Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    aget-object v5, v4, v14

    array-length v5, v5

    if-ge v15, v5, :cond_0

    .line 15
    aget-object v16, v4, v14

    new-instance v17, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    iget v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileParam;->originRow:I

    iget v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileParam;->originColumn:I

    iget v9, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileParam;->textureSize:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "line"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v4, v17

    move v5, v14

    move v6, v15

    move-object v10, v12

    invoke-direct/range {v4 .. v11}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;-><init>(IIIIILcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;Ljava/lang/String;)V

    aput-object v17, v16, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 16
    :cond_1
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->l:Ljava/util/Map;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 17
    :cond_2
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->n:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e$b;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e$b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->n:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->o:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790\u74e6\u7247\u5730\u56fe\u5c42\u7ea7\u5f02\u5e38\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private p(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->j()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->l:Ljava/util/Map;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->o:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;

    if-eqz v0, :cond_8

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;->maps:[[Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->i:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;->maps:[[Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    .line 8
    :goto_1
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileModel;->maps:[[Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 9
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    .line 10
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->i:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->isVisible(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;

    invoke-direct {v5, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->o:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;

    invoke-virtual {v0, p2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->g(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem$TileScale;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->p(Ljava/util/List;)V

    .line 14
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->m:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 16
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;

    .line 18
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->i:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->isVisible(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 19
    :try_start_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->b:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/TileItem;->dst:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 22
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 23
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/g;->a:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 24
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_3
    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->i:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->j:Z

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->g()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/f;->b()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public synthetic l(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->k(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;)V

    return-void
.end method

.method public synthetic n(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/tilemap/e;->m(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    return-void
.end method
