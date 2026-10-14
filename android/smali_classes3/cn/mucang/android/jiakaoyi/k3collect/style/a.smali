.class public Lcn/mucang/android/jiakaoyi/k3collect/style/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:F

.field public static b:F

.field public static c:F

.field public static d:F

.field public static final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    sput v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b:F

    .line 3
    sput v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 4
    sput v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->d:F

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    .line 5
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->e:F

    return-void
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;)Landroid/graphics/Paint;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 2
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p0, :cond_0

    .line 3
    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashLength:I

    int-to-float v5, v5

    aput v5, v3, v4

    iget p0, p0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashInterval:F

    aput p0, v3, v1

    const/4 p0, 0x0

    invoke-direct {v2, v3, p0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_0
    return-object v0
.end method

.method public static b()Landroid/graphics/Paint;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 2
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0xff7501

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public static c()Landroid/graphics/Paint;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 2
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method
