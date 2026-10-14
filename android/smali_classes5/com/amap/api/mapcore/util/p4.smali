.class public Lcom/amap/api/mapcore/util/p4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

.field private h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

.field private i:Z

.field private j:Landroid/os/Handler;

.field private k:Landroid/view/View;

.field private l:Lcom/amap/api/maps/offlinemap/DownloadProgressView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/p4;->a:I

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/p4;->i:Z

    .line 4
    new-instance v0, Lcom/amap/api/mapcore/util/p4$a;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/p4$a;-><init>(Lcom/amap/api/mapcore/util/p4;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p4;->j:Landroid/os/Handler;

    .line 5
    iput-object p1, p0, Lcom/amap/api/mapcore/util/p4;->b:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/p4;->g()V

    .line 7
    iput-object p2, p0, Lcom/amap/api/mapcore/util/p4;->g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    return-void
.end method

.method private c(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/p4;->a:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v0, v2, :cond_0

    if-le p2, v3, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->l:Lcom/amap/api/maps/offlinemap/DownloadProgressView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->l:Lcom/amap/api/maps/offlinemap/DownloadProgressView;

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->setProgress(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->l:Lcom/amap/api/maps/offlinemap/DownloadProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v3, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/4 p2, 0x7

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/p4;->m()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/p4;->k()V

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/p4;->i()V

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/p4;->o()V

    goto :goto_1

    .line 9
    :cond_4
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/p4;->j(I)V

    goto :goto_1

    .line 10
    :cond_5
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/p4;->h(I)V

    goto :goto_1

    .line 11
    :cond_6
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/p4;->l(I)V

    goto :goto_1

    .line 12
    :cond_7
    iget p1, p0, Lcom/amap/api/mapcore/util/p4;->a:I

    if-ne p1, v0, :cond_8

    .line 13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const-string p2, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const-string p2, "#4287ff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 16
    :cond_8
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/p4;->n(I)V

    goto :goto_1

    .line 17
    :cond_9
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/p4;->m()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private d(IIZ)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/amap/api/mapcore/util/p4;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    .line 3
    iget-object p3, p0, Lcom/amap/api/mapcore/util/p4;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {p3, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    .line 4
    :cond_0
    new-instance p3, Landroid/os/Message;

    invoke-direct {p3}, Landroid/os/Message;-><init>()V

    .line 5
    iput p1, p3, Landroid/os/Message;->arg1:I

    .line 6
    iput p2, p3, Landroid/os/Message;->arg2:I

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->j:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/p4;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/p4;->c(II)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->b:Landroid/content/Context;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/t4;->d(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p4;->k:Landroid/view/View;

    const v1, 0x7f070010

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p4;->l:Lcom/amap/api/maps/offlinemap/DownloadProgressView;

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->k:Landroid/view/View;

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p4;->c:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->k:Landroid/view/View;

    const v1, 0x7f07000f

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p4;->d:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->k:Landroid/view/View;

    const v1, 0x7f07000e

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->k:Landroid/view/View;

    const v1, 0x7f07000d

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private h(I)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/p4;->a:I

    const-string v0, "\u7b49\u5f85\u4e2d"

    const-string v1, "#4287ff"

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private j(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const-string v0, "\u6682\u505c"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const-string v1, "\u5df2\u4e0b\u8f7d-\u6709\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private l(I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/p4;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const-string v0, "\u89e3\u538b\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const-string v0, "#898989"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private n(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const-string v0, "#4287ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const-string v1, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->f:Landroid/widget/TextView;

    const-string v1, "#898989"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private declared-synchronized p()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->pause()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->restart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized q()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->g:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/p4;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->downloadByCityName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/p4;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return v2

    :goto_0
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->k:Landroid/view/View;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/p4;->a:I

    return-void
.end method

.method public f(Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/p4;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    int-to-double v0, p1

    div-double/2addr v0, v2

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " M"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/p4;->i:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/mapcore/util/p4;->d(IIZ)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->t0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->b:Landroid/content/Context;

    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/p4;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p4;->h:Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/p4;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/p4;->h(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/p4;->m()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/p4;->p()V

    .line 10
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/p4;->j(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
