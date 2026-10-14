.class public final Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final exoAdOverlay:Landroid/widget/FrameLayout;

.field public final exoArtwork:Landroid/widget/ImageView;

.field public final exoBuffering:Landroid/widget/ProgressBar;

.field public final exoContentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field public final exoErrorMessage:Landroid/widget/TextView;

.field public final exoOverlay:Landroid/widget/FrameLayout;

.field public final exoShutter:Landroid/view/View;

.field public final exoSubtitles:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/google/android/exoplayer2/ui/SubtitleView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;->rootView:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;->exoAdOverlay:Landroid/widget/FrameLayout;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;->exoArtwork:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;->exoBuffering:Landroid/widget/ProgressBar;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;->exoContentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;->exoErrorMessage:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;->exoOverlay:Landroid/widget/FrameLayout;

    .line 9
    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;->exoShutter:Landroid/view/View;

    .line 10
    iput-object p9, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;->exoSubtitles:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;
    .locals 12

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->exo_ad_overlay:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->exo_artwork:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->exo_buffering:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->exo_content_frame:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v7, :cond_0

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->exo_error_message:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->exo_overlay:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    .line 13
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->exo_shutter:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 15
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->exo_subtitles:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v11, :cond_0

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;-><init>(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/google/android/exoplayer2/ui/SubtitleView;)V

    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;
    .locals 1

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->b2_exo_player_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;->bind(Landroid/view/View;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/B2ExoPlayerViewBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
