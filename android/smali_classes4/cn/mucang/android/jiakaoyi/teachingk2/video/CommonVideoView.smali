.class public final Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000o\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0015\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000fJ\u0006\u0010\u001a\u001a\u00020\u001bJ\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020!H\u0016J\u0006\u0010\"\u001a\u00020\u001dJ\u0012\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&H\u0002R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00138\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnClickListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "onSeekBarChangeListener",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "player",
        "Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayer;",
        "roundBackground",
        "",
        "simpleDateFormat",
        "Ljava/text/SimpleDateFormat;",
        "videoListener",
        "cn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView$videoListener$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView$videoListener$1;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;",
        "getPlayer",
        "getSeekBar",
        "Landroid/widget/SeekBar;",
        "init",
        "",
        "initPlayer",
        "onClick",
        "v",
        "Landroid/view/View;",
        "reset",
        "time",
        "",
        "millionSeconds",
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
.field private a:Z

.field private b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

.field private final d:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private final e:Lcn/mucang/android/jiakaoyi/teachingk2/video/c;

.field private final f:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v0, "mm:ss"

    invoke-direct {p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->d:Ljava/text/SimpleDateFormat;

    .line 4
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->e:Lcn/mucang/android/jiakaoyi/teachingk2/video/c;

    .line 5
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/video/b;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->f:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p3, Lcn/mucang/android/jiakaoyi/teachbase/R$styleable;->CommonVideoView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026tyleable.CommonVideoView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$styleable;->CommonVideoView_round_background:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->a:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->d()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachingk2/video/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->c:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    return-object p0
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->f(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    move-result-object v0

    const-string v1, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->e()V

    return-void
.end method

.method private final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_3

    .line 2
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->seekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->f:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 3
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonPlay:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    if-eqz v3, :cond_2

    iget-object v1, v3, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->ivOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonStop:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->ivOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->videoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v3, "videoView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->c:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->e:Lcn/mucang/android/jiakaoyi/teachingk2/video/c;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->f(Lcn/mucang/android/jiakaoyi/teachingk2/video/f$c;)V

    .line 10
    :goto_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->a:Z

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->videoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->shape_round_frame_bg:I

    invoke-static {v2, v3}, Landroidx/core/a/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->videoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView$a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 13
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->videoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    :cond_1
    return-void

    .line 14
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final f(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->d:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getPlayer()Lcn/mucang/android/jiakaoyi/teachingk2/video/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->c:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    return-object v0
.end method

.method public final getSeekBar()Landroid/widget/SeekBar;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->seekBar:Landroid/widget/SeekBar;

    const-string v1, "viewBinding.seekBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonPlay:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->ivCenterIcon:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->c:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->o()V

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->buttonStop:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->c:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->l()V

    goto :goto_2

    .line 5
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutCommonVideoViewBinding;->ivOverlay:Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->c:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->h()Z

    move-result p1

    if-ne p1, v3, :cond_5

    :goto_1
    if-eqz v3, :cond_8

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->c:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->l()V

    goto :goto_2

    .line 8
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/video/CommonVideoView;->c:Lcn/mucang/android/jiakaoyi/teachingk2/video/f;

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/f;->o()V

    :cond_a
    :goto_2
    return-void

    .line 9
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
