.class public Lcom/serenegiant/dialog/ColorPickerDialog;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_COLOR:I = -0x1

.field private static final KEY_COLOR_CURRENT:Ljava/lang/String; = "current_color"

.field private static final KEY_COLOR_INIT:Ljava/lang/String; = "initial_color"

.field private static final KEY_TITLE_ID:Ljava/lang/String; = "title_id"

.field private static final TAG:Ljava/lang/String; = "ColorPickerDialog"


# instance fields
.field private isCanceled:Z

.field private final mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

.field private mCurrentColor:I

.field private mInitialColor:I

.field private mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

.field private final mOnClickListner:Landroid/content/DialogInterface$OnClickListener;

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mInitialColor:I

    .line 3
    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    .line 4
    new-instance v0, Lcom/serenegiant/dialog/ColorPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/dialog/ColorPickerDialog$1;-><init>(Lcom/serenegiant/dialog/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    .line 5
    new-instance v0, Lcom/serenegiant/dialog/ColorPickerDialog$2;

    invoke-direct {v0, p0}, Lcom/serenegiant/dialog/ColorPickerDialog$2;-><init>(Lcom/serenegiant/dialog/ColorPickerDialog;)V

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mOnClickListner:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/dialog/ColorPickerDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/dialog/ColorPickerDialog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/serenegiant/dialog/ColorPickerDialog;)Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    return-object p0
.end method

.method public static newInstance(II)Lcom/serenegiant/dialog/ColorPickerDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/serenegiant/dialog/ColorPickerDialog;

    invoke-direct {v0}, Lcom/serenegiant/dialog/ColorPickerDialog;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/serenegiant/dialog/ColorPickerDialog;->setArguments(II)V

    return-object v0
.end method

.method public static show(Landroid/app/Activity;II)Lcom/serenegiant/dialog/ColorPickerDialog;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/serenegiant/dialog/ColorPickerDialog;->newInstance(II)Lcom/serenegiant/dialog/ColorPickerDialog;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "ColorPickerDialog"

    invoke-virtual {p1, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method

.method public static show(Landroid/app/Fragment;II)Lcom/serenegiant/dialog/ColorPickerDialog;
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcom/serenegiant/dialog/ColorPickerDialog;->newInstance(II)Lcom/serenegiant/dialog/ColorPickerDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p0, p2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "ColorPickerDialog"

    invoke-virtual {p1, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->isCanceled:Z

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    if-nez v0, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 6
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    if-nez v0, :cond_1

    .line 7
    :try_start_2
    check-cast p1, Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    iput-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 8
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    if-nez p1, :cond_2

    const-string p1, "ColorPickerDialog"

    const-string v0, "must implement OnColorChangedListener"

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->isCanceled:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "title_id"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mTitleResId:I

    const/4 v1, -0x1

    const-string v2, "initial_color"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mInitialColor:I

    iput v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mInitialColor:I

    const-string v1, "current_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/serenegiant/common/R$layout;->color_picker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    new-instance v2, Lcom/serenegiant/widget/ColorPickerView;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/serenegiant/widget/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 5
    iget v3, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    invoke-virtual {v2, v3}, Lcom/serenegiant/widget/ColorPickerView;->setColor(I)V

    .line 6
    iget-object v3, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    invoke-virtual {v2, v3}, Lcom/serenegiant/widget/ColorPickerView;->setColorPickerListener(Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;)V

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/serenegiant/common/R$string;->color_picker_select:I

    iget-object v2, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mOnClickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 9
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/serenegiant/common/R$string;->color_picker_cancel:I

    iget-object v2, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mOnClickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget v1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mTitleResId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/serenegiant/common/R$string;->color_picker_default_title:I

    .line 11
    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mListener:Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->isCanceled:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;->onCancel(Lcom/serenegiant/dialog/ColorPickerDialog;)V

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    invoke-interface {p1, p0, v0}, Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;->onDismiss(Lcom/serenegiant/dialog/ColorPickerDialog;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog;->mCurrentColor:I

    const-string v1, "current_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setArguments(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title_id"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "initial_color"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "current_color"

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
