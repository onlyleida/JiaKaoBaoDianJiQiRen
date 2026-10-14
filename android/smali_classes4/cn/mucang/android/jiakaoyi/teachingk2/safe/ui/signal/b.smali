.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:[I


# instance fields
.field public a:Z

.field private b:I

.field public c:I

.field public d:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const-string v1, "#FD8588"

    .line 1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#FCDF8C"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "#58EED1"

    .line 3
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->e:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->a:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->c:I

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->d:Landroid/graphics/RectF;

    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->b:I

    const/4 v1, 0x0

    const/16 v2, 0x32

    if-ltz v0, :cond_0

    if-gt v0, v2, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->e:[I

    aget v0, v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->c:I

    goto :goto_0

    :cond_0
    const/16 v3, 0x64

    if-le v0, v2, :cond_1

    if-gt v0, v3, :cond_1

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->e:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->c:I

    goto :goto_0

    :cond_1
    if-le v0, v3, :cond_2

    const/16 v2, 0x96

    if-gt v0, v2, :cond_2

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->e:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->c:I

    goto :goto_0

    .line 5
    :cond_2
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->c:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()F
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43160000    # 150.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v0, v0, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x3e800000    # 0.25f

    add-float/2addr v0, v2

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x1f4

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->a:Z

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->b:I

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->c()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->a:Z

    :goto_1
    return-void
.end method
