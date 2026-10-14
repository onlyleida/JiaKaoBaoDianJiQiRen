.class final Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "j"
.end annotation


# instance fields
.field private final a:Landroid/view/animation/Interpolator;

.field private final b:I

.field private final c:I

.field private final d:J

.field private e:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;

.field private f:Z

.field private g:J

.field private h:I

.field final synthetic i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;IIJLcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->f:Z

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->g:J

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->h:I

    .line 5
    iput p2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->c:I

    .line 6
    iput p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->b:I

    .line 7
    invoke-static {p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->b(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->a:Landroid/view/animation/Interpolator;

    .line 8
    iput-wide p4, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->d:J

    .line 9
    iput-object p6, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->e:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->f:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->g:J

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v4, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->d:J

    div-long/2addr v0, v4

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 5
    iget v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->c:I

    iget v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->b:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->a:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 6
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v2, v2, v0

    .line 7
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8
    iget v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->h:I

    .line 9
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;

    invoke-virtual {v0, v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 10
    :goto_0
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->b:I

    iget v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->h:I

    if-eq v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;

    invoke-static {v0, p0}, Lcn/mucang/android/ui/widget/pulltorefresh/k;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->e:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;->a()V

    :cond_2
    :goto_1
    return-void
.end method
