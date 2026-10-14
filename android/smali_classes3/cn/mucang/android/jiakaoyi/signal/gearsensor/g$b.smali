.class Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:F

.field final b:F

.field final c:F

.field final d:I

.field e:Z


# direct methods
.method private constructor <init>(FFFI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->a:F

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->b:F

    .line 5
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->c:F

    .line 6
    iput p4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->d:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->e:Z

    return-void
.end method

.method synthetic constructor <init>(FFFILcn/mucang/android/jiakaoyi/signal/gearsensor/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;-><init>(FFFI)V

    return-void
.end method


# virtual methods
.method a(DDDD)V
    .locals 6

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->a:F

    float-to-double v1, v0

    sub-double v1, p1, v1

    float-to-double v3, v0

    sub-double/2addr v3, p5

    mul-double v1, v1, v3

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    sub-double/2addr p3, p7

    float-to-double v0, v0

    sub-double/2addr v0, p5

    mul-double p3, p3, v0

    sub-double/2addr p1, p5

    div-double/2addr p3, p1

    add-double/2addr p3, p7

    .line 2
    iget p5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->b:F

    float-to-double p5, p5

    cmpg-double p7, p3, p5

    if-gtz p7, :cond_1

    iget p5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->c:F

    float-to-double p5, p5

    cmpl-double p7, p3, p5

    if-ltz p7, :cond_1

    .line 3
    iget p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->d:I

    int-to-double p3, p3

    mul-double p1, p1, p3

    cmpl-double p3, p1, v3

    if-ltz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g$b;->e:Z

    :cond_1
    return-void
.end method
