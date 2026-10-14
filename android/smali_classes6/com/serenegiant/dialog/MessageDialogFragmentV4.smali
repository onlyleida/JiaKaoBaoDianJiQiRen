.class public Lcom/serenegiant/dialog/MessageDialogFragmentV4;
.super Lcom/serenegiant/dialog/DialogFragmentEx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;
    }
.end annotation


# static fields
.field private static final ARGS_KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

.field private final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/dialog/DialogFragmentEx;-><init>()V

    .line 2
    new-instance v0, Lcom/serenegiant/dialog/MessageDialogFragmentV4$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/dialog/MessageDialogFragmentV4$1;-><init>(Lcom/serenegiant/dialog/MessageDialogFragmentV4;)V

    iput-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/dialog/MessageDialogFragmentV4;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->callOnMessageDialogResult(Z)V

    return-void
.end method

.method private callOnMessageDialogResult(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/dialog/DialogFragmentEx;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "requestCode"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "permissions"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    invoke-interface {v2, p0, v1, v0, p1}, Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;->onMessageDialogResult(Lcom/serenegiant/dialog/MessageDialogFragmentV4;I[Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static newInstance(III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragmentV4;
    .locals 3

    .line 1
    new-instance v0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;

    invoke-direct {v0}, Lcom/serenegiant/dialog/MessageDialogFragmentV4;-><init>()V

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

    const-string p0, "permissions"

    .line 6
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static showDialog(Landroidx/fragment/app/Fragment;III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragmentV4;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->newInstance(III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragmentV4;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object p2, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method

.method public static showDialog(Landroidx/fragment/app/d;III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragmentV4;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->newInstance(III[Ljava/lang/String;)Lcom/serenegiant/dialog/MessageDialogFragmentV4;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object p2, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onAttach(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    if-eqz v1, :cond_2

    .line 12
    check-cast v0, Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    iput-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->mDialogListener:Lcom/serenegiant/dialog/MessageDialogFragmentV4$MessageDialogListener;

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

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCancel(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->callOnMessageDialogResult(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/dialog/DialogFragmentEx;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const-string v0, "title"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "message"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 6
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    iget-object v1, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    iget-object v1, p0, Lcom/serenegiant/dialog/MessageDialogFragmentV4;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
