.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;
.super Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0$a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->e:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0$b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->f:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0$c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->g:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    return-void
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private h(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/4 v4, 0x0

    cmpg-double v5, v0, v2

    if-ltz v5, :cond_4

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v5, v0, v2

    if-gez v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 4
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    sub-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v7, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    add-double/2addr v2, v5

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v7, v2, v5

    if-gez v7, :cond_2

    return v4

    .line 6
    :cond_2
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v2

    const-wide v5, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v2, v5

    if-gtz v0, :cond_3

    return v4

    .line 7
    :cond_3
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_4
    :goto_0
    return v4
.end method

.method private synthetic l(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const-string p1, "\u5f00\u59cb\u91c7\u96c6\u4e2d\u95f4\u7ebf"

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic n(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->e:Ljava/lang/Runnable;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->e:Ljava/lang/Runnable;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const-string p1, "\u5f00\u59cb\u91c7\u96c6\u5de6\u8fb9\u7ebf"

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic p(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->g:Ljava/lang/Runnable;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->g:Ljava/lang/Runnable;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const-string p1, "\u5f00\u59cb\u91c7\u96c6\u53f3\u8fb9\u7ebf"

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "\u5de6\u8fb9\u7ebf\u6ca1\u6709\u91c7\u96c6\u8db3\u591f\u70b9"

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 6
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    const-string v0, "\u4e2d\u95f4\u7ebf\u6ca1\u6709\u91c7\u96c6\u8db3\u591f\u70b9"

    .line 7
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 8
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    if-eqz v1, :cond_5

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_5

    const-string v0, "\u53f3\u8fb9\u7ebf\u6ca1\u6709\u91c7\u96c6\u8db3\u591f\u70b9"

    .line 9
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 10
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    if-eqz v1, :cond_6

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    if-nez v0, :cond_6

    const-string v0, "\u53f3\u8fb9\u7ebf\u5fc5\u987b\u91c7\u96c6"

    .line 11
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 12
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    if-eqz v1, :cond_7

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    if-nez v0, :cond_7

    const-string v0, "\u5de6\u8fb9\u7ebf\u5fc5\u987b\u91c7\u96c6"

    .line 13
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    .line 14
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->distance:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_8

    const-string v0, "\u96a7\u9053\u957f\u5ea6\u6ca1\u91c7\u96c6"

    .line 15
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    :cond_8
    return v3

    :cond_9
    :goto_0
    const-string v0, "\u7ed3\u675f\u7ebf\u6ca1\u91c7\u96c6"

    .line 16
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    :cond_a
    :goto_1
    const-string v0, "\u5f00\u59cb\u7ebf\u6ca1\u91c7\u96c6"

    .line 17
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2

    :cond_b
    :goto_2
    const-string v0, "\u9884\u62a5\u70b9\u6ca1\u91c7\u96c6"

    .line 18
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return v2
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    return v0
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    const/4 v2, 0x0

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 2
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    .line 6
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    .line 7
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    .line 8
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    .line 12
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->distance:D

    return-void
.end method

.method public i()V
    .locals 1

    const-string v0, "\u7ed3\u675f\u91c7\u96c6\u4e2d\u95f4\u7ebf"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()V
    .locals 1

    const-string v0, "\u7ed3\u675f\u91c7\u96c6\u5de6\u8fb9\u7ebf"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k()V
    .locals 1

    const-string v0, "\u7ed3\u675f\u91c7\u96c6\u53f3\u8fb9\u7ebf"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic m(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->l(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic o(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->n(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic q(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->p(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public r(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->distance:D

    return-void
.end method

.method public s(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_0

    .line 4
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :goto_0
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u91c7\u96c6\u70b9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public t(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-string p1, "\u91c7\u96c6\u9884\u62a5\u70b91"

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    return-void
.end method

.method public u(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    const-string p1, "\u91c7\u96c6\u9884\u62a5\u70b92"

    .line 3
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u662f\u5426\u8986\u76d6\u4e2d\u95f4\u7ebf?"

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f\u5426\u8986\u76d6\u4e2d\u95f4\u7ebf\uff0c\u91cd\u65b0\u91c7\u96c6?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u53d6\u6d88"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/o;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/o;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;)V

    const-string v2, "\u91cd\u65b0\u91c7\u96c6"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const-string v0, "\u5f00\u59cb\u91c7\u96c6\u4e2d\u95f4\u7ebf"

    .line 12
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u662f\u5426\u8986\u76d6\u5de6\u8fb9\u7ebf?"

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f\u5426\u8986\u76d6\u5de6\u8fb9\u7ebf\uff0c\u91cd\u65b0\u91c7\u96c6?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u53d6\u6d88"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/m;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;)V

    const-string v2, "\u91cd\u65b0\u91c7\u96c6"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const-string v0, "\u5f00\u59cb\u91c7\u96c6\u5de6\u8fb9\u7ebf"

    .line 12
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u662f\u5426\u8986\u76d6\u53f3\u8fb9\u7ebf?"

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f\u5426\u8986\u76d6\u53f3\u8fb9\u7ebf\uff0c\u91cd\u65b0\u91c7\u96c6?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u53d6\u6d88"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/n;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/n;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;)V

    const-string v2, "\u91cd\u65b0\u91c7\u96c6"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->c:Z

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const-string v0, "\u5f00\u59cb\u91c7\u96c6\u53f3\u8fb9\u7ebf"

    .line 12
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->e(Ljava/lang/String;)V

    return-void
.end method
