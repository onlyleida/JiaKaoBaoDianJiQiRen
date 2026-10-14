.class final Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;
.super Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic c:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;->c:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;-><init>(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;->c:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;->c:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    invoke-static {v2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->P(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;->c:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    invoke-static {v2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->P(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->Q(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;->c:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    invoke-static {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->R(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;->c:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    invoke-static {v2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->R(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v1, v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->S(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;->c:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    invoke-static {v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->R(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", viewId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;->c:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    invoke-static {v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->P(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 6

    .line 1
    invoke-super/range {p0 .. p9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result p5

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;->c:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p9

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/ui/widget/pulltorefresh/g;->d(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;IIIIZ)V

    return p5
.end method
