.class public Lcom/serenegiant/widget/DialogPreferenceV7;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/serenegiant/widget/DialogPreferenceV7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/serenegiant/widget/DialogPreferenceV7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/serenegiant/widget/DialogPreferenceV7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    sget-object v0, Landroidx/preference/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_dialogTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/serenegiant/widget/DialogPreferenceV7;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogTitle:Ljava/lang/CharSequence;

    .line 8
    :cond_0
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_dialogMessage:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogMessage:Ljava/lang/CharSequence;

    .line 9
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_dialogIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 10
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_positiveButtonText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 11
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_negativeButtonText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 12
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_dialogLayout:I

    iget p3, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogLayoutResId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogLayoutResId:I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    .line 1
    sget v0, Lcom/serenegiant/common/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/widget/DialogPreferenceV7;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x8

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 5
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/DialogPreferenceV7;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3
    iput p2, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mWhichButtonClicked:I

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .line 1
    iget v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogLayoutResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    iget v2, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetached()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/widget/DialogPreferenceV7;->onActivityDestroy()V

    .line 2
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialog:Landroid/app/Dialog;

    .line 2
    iget p1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mWhichButtonClicked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/preference/Preference$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4
    iget-boolean v0, p1, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7;->showDialog(Landroid/os/Bundle;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;

    invoke-direct {v1, v0}, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, v1, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;->isDialogShowing:Z

    .line 5
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public setDialogIcon(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/widget/DialogPreferenceV7;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogLayoutResId:I

    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/widget/DialogPreferenceV7;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/widget/DialogPreferenceV7;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7;->setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/widget/DialogPreferenceV7;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/widget/DialogPreferenceV7;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/widget/DialogPreferenceV7;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    .line 2
    iput v1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mWhichButtonClicked:I

    .line 3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogTitle:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {p0}, Lcom/serenegiant/widget/DialogPreferenceV7;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/DialogPreferenceV7;->onBindDialogView(Landroid/view/View;)V

    .line 10
    iget-object v1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/DialogPreferenceV7;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 13
    iget-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/widget/DialogPreferenceV7;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/serenegiant/widget/DialogPreferenceV7;->needInputMethod()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    invoke-direct {p0, v0}, Lcom/serenegiant/widget/DialogPreferenceV7;->requestInputMethod(Landroid/app/Dialog;)V

    .line 17
    :cond_2
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
