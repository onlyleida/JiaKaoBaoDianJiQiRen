.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/a;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float p1, v3

    .line 4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/a;->a:F

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sub-float v0, p1, v0

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    .line 6
    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_4

    .line 7
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/a;->b:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v0, v4

    const/high16 v4, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    .line 8
    :cond_4
    :goto_1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/a;->a:F

    .line 9
    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/c0/c/a;->b:F

    return v2

    :cond_5
    :goto_2
    return v1
.end method
