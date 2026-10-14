.class public Lcn/mucang/android/core/webview/k/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/webview/k/b$k;,
        Lcn/mucang/android/core/webview/k/b$l;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/core/webview/k/b$k;)Landroid/app/AlertDialog;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    new-instance p0, Lcn/mucang/android/core/webview/k/b$d;

    invoke-direct {p0, p3}, Lcn/mucang/android/core/webview/k/b$d;-><init>(Lcn/mucang/android/core/webview/k/b$k;)V

    const-string p1, "\u786e\u5b9a"

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    new-instance p0, Lcn/mucang/android/core/webview/k/b$e;

    invoke-direct {p0}, Lcn/mucang/android/core/webview/k/b$e;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 6
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/core/webview/k/b$k;)Landroid/app/AlertDialog;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7
    new-instance p0, Lcn/mucang/android/core/webview/k/b$i;

    invoke-direct {p0, p5}, Lcn/mucang/android/core/webview/k/b$i;-><init>(Lcn/mucang/android/core/webview/k/b$k;)V

    invoke-virtual {p2, p3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8
    new-instance p0, Lcn/mucang/android/core/webview/k/b$j;

    invoke-direct {p0, p5}, Lcn/mucang/android/core/webview/k/b$j;-><init>(Lcn/mucang/android/core/webview/k/b$k;)V

    invoke-virtual {p2, p4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9
    new-instance p0, Lcn/mucang/android/core/webview/k/b$a;

    invoke-direct {p0}, Lcn/mucang/android/core/webview/k/b$a;-><init>()V

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 10
    invoke-virtual {p2, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 11
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/android/core/webview/k/b$k;)Landroid/app/AlertDialog;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    new-instance p0, Lcn/mucang/android/core/webview/k/b$f;

    invoke-direct {p0, p6}, Lcn/mucang/android/core/webview/k/b$f;-><init>(Lcn/mucang/android/core/webview/k/b$k;)V

    invoke-virtual {v0, p3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    new-instance p0, Lcn/mucang/android/core/webview/k/b$g;

    invoke-direct {p0, p6}, Lcn/mucang/android/core/webview/k/b$g;-><init>(Lcn/mucang/android/core/webview/k/b$k;)V

    invoke-virtual {v0, p4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    new-instance p0, Lcn/mucang/android/core/webview/k/b$h;

    invoke-direct {p0}, Lcn/mucang/android/core/webview/k/b$h;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0, p5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lcn/mucang/android/core/webview/k/b$l;)Landroid/app/ProgressDialog;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const-string p0, "\u52a0\u8f7d\u4e2d..."

    .line 3
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 5
    new-instance p0, Lcn/mucang/android/core/webview/k/b$b;

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/k/b$b;-><init>(Lcn/mucang/android/core/webview/k/b$l;)V

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 6
    new-instance p0, Lcn/mucang/android/core/webview/k/b$c;

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/k/b$c;-><init>(Lcn/mucang/android/core/webview/k/b$l;)V

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method
