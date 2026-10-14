.class public Lcom/serenegiant/dialog/MessageDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/serenegiant/dialog/MessageDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/dialog/MessageDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/dialog/MessageDialogFragment;)Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/serenegiant/dialog/MessageDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/serenegiant/dialog/MessageDialogFragment;

    invoke-direct {v0}, Lcom/serenegiant/dialog/MessageDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestCode"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "title"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "message"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p3, p0, [Ljava/lang/String;

    :goto_0
    const-string p0, "permissions"

    .line 6
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static showDialog(Landroid/app/Activity;III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragment;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/serenegiant/dialog/MessageDialogFragment;->newInstance(III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragment;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    sget-object p2, Lcom/serenegiant/dialog/MessageDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method

.method public static showDialog(Landroid/app/Fragment;III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragment;
    .locals 0

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/serenegiant/dialog/MessageDialogFragment;->newInstance(III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragment;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    sget-object p2, Lcom/serenegiant/dialog/MessageDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    instance-of v0, p1, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-eqz v1, :cond_2

    .line 12
    check-cast v0, Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragment;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragment$MessageDialogListener;

    if-eqz v0, :cond_3

    return-void

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "requestCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "permissions"

    .line 5
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    .line 7
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/serenegiant/dialog/MessageDialogFragment$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/serenegiant/dialog/MessageDialogFragment$2;-><init>(Lcom/serenegiant/dialog/MessageDialogFragment;I[Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/serenegiant/dialog/MessageDialogFragment$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/serenegiant/dialog/MessageDialogFragment$1;-><init>(Lcom/serenegiant/dialog/MessageDialogFragment;I[Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
