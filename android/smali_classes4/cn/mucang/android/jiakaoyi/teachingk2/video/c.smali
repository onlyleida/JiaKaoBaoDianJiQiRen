.class public final Lcn/mucang/android/jiakaoyi/teachingk2/video/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/video/f$c;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView$videoListener$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer$OnVideoListener;",
        "onComplete",
        "",
        "onError",
        "onPause",
        "onPlaying",
        "onPrepared",
        "onSeek",
        "position",
        "",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->seekBar:Landroid/widget/SeekBar;

    long-to-int v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->textViewCurrentPosition:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->c(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void

    .line 5
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonPlay:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->ivCenterIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonStop:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onComplete()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->textViewCurrentPosition:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->a(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    move-result-object v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->g()J

    move-result-wide v4

    :goto_0
    invoke-static {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->c(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonPlay:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonStop:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->ivCenterIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onError()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->videoComp:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "viewBinding.videoComp"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->tvVideoStatus:Landroid/widget/TextView;

    const-string v1, "viewBinding.tvVideoStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 5
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onPause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonPlay:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->ivCenterIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonStop:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onPrepared()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->videoComp:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "viewBinding.videoComp"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->tvVideoStatus:Landroid/widget/TextView;

    const-string v4, "viewBinding.tvVideoStatus"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->textViewTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->a(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    move-result-object v5

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->g()J

    move-result-wide v5

    :goto_0
    invoke-static {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->c(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonPlay:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->ivOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->a(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->g()J

    move-result-wide v1

    long-to-int v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
