.class public Lcn/mucang/android/core/webview/core/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/core/webview/core/MucangWebView;

.field private final b:Lcn/mucang/android/core/webview/HtmlExtra;

.field private c:Landroid/app/ProgressDialog;

.field private d:Ljava/lang/StringBuilder;

.field private e:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcn/mucang/android/core/webview/i;

.field private final g:Lcn/mucang/android/core/webview/d;

.field private final h:Lcn/mucang/android/core/webview/tracker/c;

.field private final i:Landroid/media/AudioManager;

.field private final j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/HtmlExtra;Lcn/mucang/android/core/webview/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/webview/i;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/i;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/g;->f:Lcn/mucang/android/core/webview/i;

    .line 3
    new-instance v0, Lcn/mucang/android/core/webview/tracker/c;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/tracker/c;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/g;->h:Lcn/mucang/android/core/webview/tracker/c;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/g;->i:Landroid/media/AudioManager;

    .line 5
    new-instance v0, Lcn/mucang/android/core/webview/core/b;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/core/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/g;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/core/webview/core/g;->k:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 7
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    .line 8
    iput-object p2, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    .line 9
    iput-object p3, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/g;->c()V

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/g;->r()V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mucangWebView, htmlExtra and html5Controller must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private G(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/core/g;->k:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/webview/protocol/e/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra;->isShowCloseButton()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/core/g;->k:Z

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcn/mucang/android/core/webview/core/g;->k:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcn/mucang/android/core/webview/core/g;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    invoke-interface {p1}, Lcn/mucang/android/core/webview/d;->j()V

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    invoke-interface {p1}, Lcn/mucang/android/core/webview/d;->p()V

    :goto_1
    return-void
.end method

.method private J(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/g;->e:Landroid/webkit/ValueCallback;

    .line 2
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.OPENABLE"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    const/16 v0, 0x7e3

    invoke-interface {p2, p1, v0}, Lcn/mucang/android/core/webview/d;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private K(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "e"

    .line 7
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private L(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->p:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->p:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/webview/tracker/b;->c()Lcn/mucang/android/core/webview/tracker/b;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/HtmlExtra;->getR()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/core/webview/core/g;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcn/mucang/android/core/webview/tracker/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/g;->p:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private M(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/core/g;->o(Landroid/net/Uri;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/core/g;->q(Landroid/net/Uri;)V

    return-void
.end method

.method private N(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method private O(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolContext()Lcn/mucang/android/core/webview/core/h;

    move-result-object v0

    invoke-static {p1}, Lcn/mucang/android/core/webview/h;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/core/h;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/webview/core/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/g;->k()V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/core/webview/core/g;)Lcn/mucang/android/core/webview/core/MucangWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/g;->d:Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getParamsMode()Lcn/mucang/android/core/webview/ParamsMode;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Lcn/mucang/android/core/webview/core/g$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/s;->h()Lcn/mucang/android/core/config/s;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/config/s;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "1"

    .line 6
    iget-object v2, p0, Lcn/mucang/android/core/webview/core/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_full"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/mucang/android/core/api/f/c;->f(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/mucang/android/core/api/f/c;->e(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 9
    :goto_1
    iget-object v2, p0, Lcn/mucang/android/core/webview/core/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/g;->n:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url after build: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTML5Controller"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private f(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 1
    div-long v0, p1, v0

    long-to-int v1, v0

    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getStatisticsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\u5c0f\u4e8e5\u79d2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getStatisticsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(5-10\u79d2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-ge v1, v0, :cond_2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getStatisticsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(10-30\u79d2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x3c

    if-ge v1, v0, :cond_3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getStatisticsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(30-60\u79d2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getStatisticsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\u5927\u4e8e60\u79d2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getStatisticsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/HtmlExtra;->getStatisticsName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Lf/a/a/a/c;->o(Ljava/lang/String;Ljava/lang/String;J)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {p2}, Lcn/mucang/android/core/webview/HtmlExtra;->getStatisticsId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-duration"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lf/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->c:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/core/g;->N(Landroid/net/Uri;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->f:Lcn/mucang/android/core/webview/i;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/i;->a(Landroid/net/Uri;)V

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/core/g;->O(Landroid/net/Uri;)V

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/core/g;->M(Landroid/net/Uri;)V

    .line 7
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/core/g;->p(Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/core/webview/d;->m()V

    :cond_0
    return-void
.end method

.method private o(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "mc-web-hardware"

    .line 1
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/core/webview/core/g;->l:Z

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcn/mucang/android/core/webview/core/g;->l:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private p(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "mc-web-orientation"

    .line 1
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    invoke-interface {v0}, Lcn/mucang/android/core/webview/d;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra;->getOrientation()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    invoke-interface {v0, p1}, Lcn/mucang/android/core/webview/d;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private q(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "mc-web-software"

    .line 1
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/core/webview/core/g;->m:Z

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcn/mucang/android/core/webview/core/g;->m:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolContext()Lcn/mucang/android/core/webview/core/h;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/h;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/core/g;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/g;->k()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->isLoadUrlWithPost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/HtmlExtra;->getPostData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->e(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/HtmlExtra;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->isOpenAsync()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/g;->w()V

    :cond_3
    return-void
.end method

.method private s(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/webview/protocol/e/a;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/webview/protocol/e/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/core/webview/protocol/e/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/core/j;->h(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private u(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "file://"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->c:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    invoke-interface {v0}, Lcn/mucang/android/core/webview/d;->i()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/core/webview/core/g$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/core/g$a;-><init>(Lcn/mucang/android/core/webview/core/g;)V

    invoke-static {v0, v1}, Lcn/mucang/android/core/webview/k/b;->d(Landroid/content/Context;Lcn/mucang/android/core/webview/k/b$l;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/g;->c:Landroid/app/ProgressDialog;

    .line 4
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    invoke-interface {p1, p2}, Lcn/mucang/android/core/webview/d;->c(I)V

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    invoke-interface {v0, p1}, Lcn/mucang/android/core/webview/d;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public C([Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->e:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/g;->q:Ljava/io/File;

    return-void
.end method

.method public D(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public E()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->i:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->j:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->onResume()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->e:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/core/webview/core/g;->e:Landroid/webkit/ValueCallback;

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/l0;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-wide v0, p0, Lcn/mucang/android/core/webview/core/g;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/core/webview/core/g;->o:J

    :cond_3
    return-void
.end method

.method public F(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    array-length p3, p1

    if-lez p3, :cond_0

    const/4 p3, 0x0

    .line 3
    aget-object p1, p1, p3

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "*/*"

    .line 5
    :goto_0
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/core/webview/core/g;->J(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/webview/client/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->isLoadUrlWithPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->n:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/HtmlExtra;->getPostData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/mucang/android/core/webview/core/g;->p:Ljava/lang/String;

    return-void
.end method

.method public I(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/core/webview/core/g;->j(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcn/mucang/android/core/webview/protocol/e/a;->f(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p2}, Lcn/mucang/android/core/webview/protocol/e/a;->m(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/webview/h;->a(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/g;->k()V

    :cond_0
    return v0

    .line 6
    :cond_1
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, p2}, Lcn/mucang/android/core/webview/core/g;->u(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-direct {p0, p2}, Lcn/mucang/android/core/webview/core/g;->K(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcn/mucang/android/core/webview/core/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/core/MucangWebView;->f(Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/g;->g()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->h:Lcn/mucang/android/core/webview/tracker/c;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/tracker/c;->d()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getStatisticsId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getStatisticsName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/core/webview/core/g;->o:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/core/webview/core/g;->f(J)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u0;->c(Landroid/webkit/WebView;)V

    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/core/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/core/g;->n()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    const-string v1, "onWebviewClose"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/webview/core/MucangWebView;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    invoke-interface {v0}, Lcn/mucang/android/core/webview/d;->i()Landroid/app/Activity;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcn/mucang/android/core/webview/g;

    if-eqz v1, :cond_2

    check-cast v0, Lcn/mucang/android/core/webview/g;

    .line 7
    invoke-interface {v0, p0}, Lcn/mucang/android/core/webview/g;->a(Lcn/mucang/android/core/webview/core/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/core/g;->t()V

    :goto_0
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->q:Ljava/io/File;

    return-object v0
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/webview/h;->f(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    invoke-interface {v0}, Lcn/mucang/android/core/webview/d;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->g(Landroid/app/Activity;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/g;->k()V

    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public x(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/g;->h:Lcn/mucang/android/core/webview/tracker/c;

    new-instance v0, Lcn/mucang/android/core/webview/tracker/a;

    sget-object v1, Lcn/mucang/android/core/webview/tracker/Event;->PAGE_FINISHED:Lcn/mucang/android/core/webview/tracker/Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p2, v1, v2, v3}, Lcn/mucang/android/core/webview/tracker/a;-><init>(Ljava/lang/String;Lcn/mucang/android/core/webview/tracker/Event;J)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/webview/tracker/c;->b(Lcn/mucang/android/core/webview/tracker/a;)V

    .line 2
    invoke-direct {p0, p2}, Lcn/mucang/android/core/webview/core/g;->L(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Lcn/mucang/android/core/webview/core/g;->G(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/g;->g:Lcn/mucang/android/core/webview/d;

    invoke-interface {p1, p2}, Lcn/mucang/android/core/webview/d;->e(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra;->isOpenAsync()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/core/webview/core/g;->g()V

    :cond_0
    return-void
.end method

.method public y(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/core/webview/core/g;->j(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/g;->h:Lcn/mucang/android/core/webview/tracker/c;

    new-instance p3, Lcn/mucang/android/core/webview/tracker/a;

    sget-object v0, Lcn/mucang/android/core/webview/tracker/Event;->PAGE_START:Lcn/mucang/android/core/webview/tracker/Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p3, p2, v0, v1, v2}, Lcn/mucang/android/core/webview/tracker/a;-><init>(Ljava/lang/String;Lcn/mucang/android/core/webview/tracker/Event;J)V

    invoke-virtual {p1, p3}, Lcn/mucang/android/core/webview/tracker/c;->b(Lcn/mucang/android/core/webview/tracker/a;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/webview/tracker/b;->c()Lcn/mucang/android/core/webview/tracker/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/webview/tracker/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/core/webview/tracker/b;->c()Lcn/mucang/android/core/webview/tracker/b;

    move-result-object p1

    iget-object p3, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {p3}, Lcn/mucang/android/core/webview/HtmlExtra;->getI()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getR()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->p:Ljava/lang/String;

    invoke-virtual {p1, p3, v0, p2, v1}, Lcn/mucang/android/core/webview/tracker/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lcn/mucang/android/core/webview/core/g;->p:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/MucangWebView;->onPause()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/g;->a:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/g;->b:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/l0;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
