.class public final Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u000eH\u0014J\u0008\u0010\u0014\u001a\u00020\u000eH\u0014J\u0008\u0010\u0015\u001a\u00020\u000eH\u0014J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "bgView",
        "Landroid/widget/ImageView;",
        "iconIv",
        "Lcn/mucang/android/image/view/MucangImageView;",
        "textTv",
        "Landroid/widget/TextView;",
        "changeStatus",
        "",
        "status",
        "",
        "time",
        "",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onFinishInflate",
        "refreshTime",
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
.field private a:Landroid/widget/ImageView;

.field private b:Lcn/mucang/android/image/view/MucangImageView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    const-string v0, "time"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->a:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->bg_call:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->b:Lcn/mucang/android/image/view/MucangImageView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_call:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->c:Landroid/widget/TextView;

    if-nez p1, :cond_2

    goto :goto_6

    :cond_2
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_emergency_call:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 4
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->a:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->bg_call:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->b:Lcn/mucang/android/image/view/MucangImageView;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_called:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->c:Landroid/widget/TextView;

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 7
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->a:Landroid/widget/ImageView;

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->bg_calling:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :goto_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->b:Lcn/mucang/android/image/view/MucangImageView;

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$raw;->ic_stop_call:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcn/mucang/android/image/view/MucangImageView;->c(II)V

    .line 9
    :goto_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->c:Landroid/widget/TextView;

    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_calling:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "time"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->i(Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->p(Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->bgView:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->a:Landroid/widget/ImageView;

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->iconIv:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/image/view/MucangImageView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->b:Lcn/mucang/android/image/view/MucangImageView;

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->textTv:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;->c:Landroid/widget/TextView;

    return-void
.end method
