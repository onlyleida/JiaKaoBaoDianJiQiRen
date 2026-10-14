.class public Lcn/mucang/jiakaoyi/uilib/login/face/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Landroid/graphics/PointF;

.field private final c:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(DDDD)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/i;->a:I

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/i;->b:Landroid/graphics/PointF;

    .line 4
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/i;->c:Landroid/graphics/PointF;

    double-to-float p1, p1

    .line 5
    iput p1, v0, Landroid/graphics/PointF;->x:F

    double-to-float p1, p3

    .line 6
    iput p1, v0, Landroid/graphics/PointF;->y:F

    double-to-float p1, p5

    .line 7
    iput p1, v1, Landroid/graphics/PointF;->x:F

    double-to-float p1, p7

    .line 8
    iput p1, v1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public static a(DDDDD)D
    .locals 12

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    mul-double v2, p0, p0

    mul-double v4, v0, v0

    mul-double v6, v4, v0

    mul-double v8, v2, p0

    mul-double v6, v6, p2

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v4, v4, v10

    mul-double v4, v4, p0

    mul-double v4, v4, p4

    add-double/2addr v6, v4

    mul-double v0, v0, v10

    mul-double v0, v0, v2

    mul-double v0, v0, p6

    add-double/2addr v6, v0

    mul-double v8, v8, p8

    add-double/2addr v6, v8

    return-wide v6
.end method


# virtual methods
.method public b(F)F
    .locals 12

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/i;->a:I

    move v1, p1

    :goto_0
    const/16 v2, 0x1000

    if-ge v0, v2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v0

    mul-float v2, v2, v1

    const/high16 v1, 0x45800000    # 4096.0f

    div-float v1, v2, v1

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    .line 2
    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/login/face/i;->b:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-double v6, v6

    iget-object v8, p0, Lcn/mucang/jiakaoyi/uilib/login/face/i;->c:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v11}, Lcn/mucang/jiakaoyi/uilib/login/face/i;->a(DDDDD)D

    move-result-wide v2

    float-to-double v4, p1

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_0

    .line 3
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/i;->a:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/i;->b:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v6, p1

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/i;->c:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v8, p1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v11}, Lcn/mucang/jiakaoyi/uilib/login/face/i;->a(DDDDD)D

    move-result-wide v0

    const-wide v2, 0x3feff7ced916872bL    # 0.999

    cmpl-double p1, v0, v2

    if-lez p1, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/i;->a:I

    :cond_2
    double-to-float p1, v0

    return p1
.end method
