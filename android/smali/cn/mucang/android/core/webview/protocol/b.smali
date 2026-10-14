.class public Lcn/mucang/android/core/webview/protocol/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/protocol/b;->a:Landroid/net/Uri;

    return-void
.end method

.method private a(Lcn/mucang/android/core/webview/core/h;)V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/j/a;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/j/a;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/webview/protocol/b;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/mucang/android/core/webview/protocol/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/core/webview/j/a;->e:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcn/mucang/android/core/webview/j/a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/h;->a()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lf/a/a/a/c;->p(Ljava/lang/String;)V

    const-string v2, "\u63d0\u793a"

    .line 7
    iput-object v2, v0, Lcn/mucang/android/core/webview/j/a;->a:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcn/mucang/android/core/webview/protocol/b;->a:Landroid/net/Uri;

    invoke-static {v3}, Lcn/mucang/android/core/webview/h;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "openres"

    .line 10
    iput-object v4, v0, Lcn/mucang/android/core/webview/j/a;->b:Ljava/lang/String;

    .line 11
    iput-object v3, v0, Lcn/mucang/android/core/webview/j/a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, "45cd9c4c-c62d-400a-a12b-364a0f25f59d"

    .line 12
    iput-object v3, v0, Lcn/mucang/android/core/webview/j/a;->b:Ljava/lang/String;

    .line 13
    iput-object p1, v0, Lcn/mucang/android/core/webview/j/a;->d:Ljava/lang/String;

    .line 14
    :goto_0
    new-instance v3, Lcn/mucang/android/core/callphone/PhoneCallRequest;

    iget-object v4, v0, Lcn/mucang/android/core/webview/j/a;->e:Ljava/lang/String;

    iget-object v5, v0, Lcn/mucang/android/core/webview/j/a;->b:Ljava/lang/String;

    iget-object v6, v0, Lcn/mucang/android/core/webview/j/a;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v2}, Lcn/mucang/android/core/callphone/PhoneCallRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcn/mucang/android/core/webview/protocol/b;->a:Landroid/net/Uri;

    invoke-static {v2}, Lcn/mucang/android/core/webview/h;->g(Landroid/net/Uri;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 16
    invoke-virtual {v3, v2}, Lcn/mucang/android/core/callphone/PhoneCallRequest;->setNeedConfirm(Z)V

    .line 17
    invoke-static {}, Lcn/mucang/android/core/callphone/a;->h()Lcn/mucang/android/core/callphone/a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/mucang/android/core/callphone/a;->d(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u62e8\u6253\u7535\u8bdd\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/mucang/android/core/webview/j/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 21
    new-instance v1, Lcn/mucang/android/core/webview/protocol/b$a;

    invoke-direct {v1, p0, v0, p1}, Lcn/mucang/android/core/webview/protocol/b$a;-><init>(Lcn/mucang/android/core/webview/protocol/b;Lcn/mucang/android/core/webview/j/a;Ljava/lang/String;)V

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v3, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 22
    new-instance v1, Lcn/mucang/android/core/webview/protocol/b$b;

    invoke-direct {v1, p0, v0, p1}, Lcn/mucang/android/core/webview/protocol/b$b;-><init>(Lcn/mucang/android/core/webview/protocol/b;Lcn/mucang/android/core/webview/j/a;Ljava/lang/String;)V

    const-string p1, "\u53d6\u6d88"

    invoke-virtual {v3, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 23
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 24
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {v3, v4}, Lcn/mucang/android/core/callphone/PhoneCallRequest;->setNeedConfirm(Z)V

    .line 26
    invoke-static {}, Lcn/mucang/android/core/callphone/a;->h()Lcn/mucang/android/core/callphone/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/mucang/android/core/callphone/a;->d(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel-protocol : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelProtocol"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ":"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 4
    aget-object p1, p1, v0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public b(Lcn/mucang/android/core/webview/core/h;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/b;->a(Lcn/mucang/android/core/webview/core/h;)V

    const/4 p1, 0x0

    return-object p1
.end method
