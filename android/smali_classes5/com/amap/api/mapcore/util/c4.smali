.class public Lcom/amap/api/mapcore/util/c4;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/c4$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field l:I

.field private m:I

.field private n:Ljava/lang/Runnable;

.field private o:I

.field private p:Lcom/amap/api/mapcore/util/c4$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amap/api/mapcore/util/c4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/c4;->c:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c4;->f:Landroid/graphics/Bitmap;

    const-string v0, "#eeffffff"

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/c4;->g:I

    const-string v0, "#44383838"

    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/c4;->h:I

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcom/amap/api/mapcore/util/c4;->i:I

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/amap/api/mapcore/util/c4;->j:I

    .line 8
    iput v0, p0, Lcom/amap/api/mapcore/util/c4;->l:I

    const/16 v0, 0x32

    .line 9
    iput v0, p0, Lcom/amap/api/mapcore/util/c4;->o:I

    .line 10
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c4;->g(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/amap/api/mapcore/util/c4;)[I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c4;->w()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic B(Lcom/amap/api/mapcore/util/c4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/c4;->e:I

    return p0
.end method

.method static synthetic C(Lcom/amap/api/mapcore/util/c4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/c4;->h:I

    return p0
.end method

.method static synthetic D(Lcom/amap/api/mapcore/util/c4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/c4;->i:I

    return p0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static b(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amap/api/mapcore/util/c4;->o(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/c4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/c4;->m:I

    return p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/c4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/c4;->m:I

    return p1
.end method

.method private f(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/c4;->c:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    div-int v1, p1, v0

    iget v2, p0, Lcom/amap/api/mapcore/util/c4;->j:I

    add-int/2addr v1, v2

    .line 3
    rem-int v3, p1, v0

    .line 4
    div-int/2addr p1, v0

    if-nez v3, :cond_1

    add-int v1, p1, v2

    goto :goto_0

    .line 5
    :cond_1
    div-int/lit8 v0, v0, 0x2

    if-le v3, v0, :cond_2

    add-int/2addr p1, v2

    add-int/lit8 v1, p1, 0x1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c4;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_5

    .line 7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c4;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_3

    return-void

    :cond_3
    if-ne v1, v0, :cond_4

    const-string v3, "#0288ce"

    .line 8
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_4
    const-string v3, "#bbbbbb"

    .line 9
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c4;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/l3;->b(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "map_indoor_select.png"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c4;->f:Landroid/graphics/Bitmap;

    .line 7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :catchall_0
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c4;->b:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c4;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 11
    new-instance p1, Lcom/amap/api/mapcore/util/c4$a;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/c4$a;-><init>(Lcom/amap/api/mapcore/util/c4;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/c4;->n:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic l(Lcom/amap/api/mapcore/util/c4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/c4;->c:I

    return p0
.end method

.method private m(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c4;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v2, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    .line 4
    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c4;->a:Landroid/content/Context;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/c4;->a(Landroid/content/Context;F)I

    move-result p1

    .line 10
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c4;->a:Landroid/content/Context;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/c4;->a(Landroid/content/Context;F)I

    move-result v1

    .line 11
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 12
    iget p1, p0, Lcom/amap/api/mapcore/util/c4;->c:I

    if-nez p1, :cond_0

    .line 13
    invoke-static {v0}, Lcom/amap/api/mapcore/util/c4;->b(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/c4;->c:I

    .line 14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c4;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/amap/api/mapcore/util/c4;->c:I

    iget v4, p0, Lcom/amap/api/mapcore/util/c4;->k:I

    mul-int v2, v2, v4

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/amap/api/mapcore/util/c4;->c:I

    iget v2, p0, Lcom/amap/api/mapcore/util/c4;->k:I

    mul-int v1, v1, v2

    invoke-direct {p1, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object v0
.end method

.method public static o(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    .line 2
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic q(Lcom/amap/api/mapcore/util/c4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/c4;->j:I

    return p0
.end method

.method static synthetic r(Lcom/amap/api/mapcore/util/c4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c4;->y()V

    return-void
.end method

.method static synthetic t(Lcom/amap/api/mapcore/util/c4;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c4;->n:Ljava/lang/Runnable;

    return-object p0
.end method

.method private u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    iget v0, p0, Lcom/amap/api/mapcore/util/c4;->j:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/c4;->k:I

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c4;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/c4;->m(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c4;->f(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic v(Lcom/amap/api/mapcore/util/c4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/c4;->o:I

    return p0
.end method

.method private w()[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1
    iget v2, p0, Lcom/amap/api/mapcore/util/c4;->c:I

    iget v3, p0, Lcom/amap/api/mapcore/util/c4;->j:I

    mul-int v4, v2, v3

    aput v4, v0, v1

    const/4 v1, 0x1

    add-int/2addr v3, v1

    mul-int v2, v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method static synthetic x(Lcom/amap/api/mapcore/util/c4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/c4;->g:I

    return p0
.end method

.method private y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->p:Lcom/amap/api/mapcore/util/c4$d;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c4;->p()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/c4$d;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/amap/api/mapcore/util/c4;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c4;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/c4;->m:I

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->n:Ljava/lang/Runnable;

    iget v1, p0, Lcom/amap/api/mapcore/util/c4;->o:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public fling(I)V
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    return-void
.end method

.method public h(Lcom/amap/api/mapcore/util/c4$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c4;->p:Lcom/amap/api/mapcore/util/c4$d;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/c4;->j:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    add-int/2addr v1, v0

    .line 4
    iput v1, p0, Lcom/amap/api/mapcore/util/c4;->l:I

    .line 5
    new-instance p1, Lcom/amap/api/mapcore/util/c4$c;

    invoke-direct {p1, p0, v0}, Lcom/amap/api/mapcore/util/c4$c;-><init>(Lcom/amap/api/mapcore/util/c4;I)V

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-void
.end method

.method public k([Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_1
    iget v1, p0, Lcom/amap/api/mapcore/util/c4;->j:I

    if-ge p1, v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c4;->u()V

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->f:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    .line 3
    iput-object v1, p0, Lcom/amap/api/mapcore/util/c4;->f:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->p:Lcom/amap/api/mapcore/util/c4$d;

    if-eqz v0, :cond_1

    .line 5
    iput-object v1, p0, Lcom/amap/api/mapcore/util/c4;->p:Lcom/amap/api/mapcore/util/c4$d;

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/c4;->f(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/c4;->e:I

    const/4 p1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c4;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c4;->e()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/amap/api/mapcore/util/c4;->l:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/c4;->j:I

    sub-int/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c4;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/util/c4;->j:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public s()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/c4;->g:I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/amap/api/mapcore/util/c4;->e:I

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c4;->a:Landroid/content/Context;

    const-string v0, "window"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/c4;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    new-instance p1, Lcom/amap/api/mapcore/util/c4$b;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/c4$b;-><init>(Lcom/amap/api/mapcore/util/c4;)V

    .line 7
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
