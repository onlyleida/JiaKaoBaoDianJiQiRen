.class public Lcn/mucang/android/core/webview/e;
.super Lf/a/a/e/a/c/b;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/d;
.implements Lcn/mucang/android/core/webview/core/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/webview/e$f;
    }
.end annotation


# instance fields
.field private d:Lcn/mucang/android/core/webview/protocol/d/a$b;

.field private e:Lcn/mucang/android/core/webview/core/MucangWebView;

.field private f:Lcn/mucang/android/core/webview/m/a;

.field private g:Lcn/mucang/android/core/webview/e$f;

.field private h:Lcn/mucang/android/core/webview/HtmlExtra;

.field private i:Lcn/mucang/android/core/webview/core/g;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/webview/core/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Landroid/webkit/DownloadListener;

.field private m:Landroid/view/View;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/c/b;-><init>()V

    return-void
.end method

.method static synthetic A(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/HtmlExtra;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    return-object p0
.end method

.method static synthetic B(Lcn/mucang/android/core/webview/e;Lcn/mucang/android/core/webview/HtmlExtra;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/e;->Q(Lcn/mucang/android/core/webview/HtmlExtra;)V

    return-void
.end method

.method static synthetic C(Lcn/mucang/android/core/webview/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/e;->O(Ljava/lang/String;)V

    return-void
.end method

.method private E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->isSupportLongPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->e:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/core/webview/e$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/e$a;-><init>(Lcn/mucang/android/core/webview/e;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "__core__extra_html__"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/webview/HtmlExtra;

    iput-object v0, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/e;->m()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/e;->m()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->d()Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/e;->m()V

    return-void

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originUrl-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTML5Fragment"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private H()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/c/b;->b:Landroid/view/View;

    sget v1, Lcn/mucang/android/framework/webview/R$id;->web_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->e:Lcn/mucang/android/core/webview/core/MucangWebView;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->destroy()V

    .line 4
    :cond_0
    new-instance v1, Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/mucang/android/core/webview/core/MucangWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/mucang/android/core/webview/e;->e:Lcn/mucang/android/core/webview/core/MucangWebView;

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcn/mucang/android/core/webview/e;->k:Z

    .line 6
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->e:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {v0, p0}, Lcn/mucang/android/core/webview/core/MucangWebView;->setWebViewController(Lcn/mucang/android/core/webview/core/m;)V

    .line 8
    new-instance v0, Lcn/mucang/android/core/webview/core/g;

    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->e:Lcn/mucang/android/core/webview/core/MucangWebView;

    iget-object v2, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-direct {v0, v1, v2, p0}, Lcn/mucang/android/core/webview/core/g;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/HtmlExtra;Lcn/mucang/android/core/webview/d;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/core/webview/e;->E()V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->j:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/webview/core/d;

    .line 12
    iget-object v2, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    invoke-virtual {v2, v1}, Lcn/mucang/android/core/webview/core/g;->d(Lcn/mucang/android/core/webview/core/d;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->e:Lcn/mucang/android/core/webview/core/MucangWebView;

    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->l:Landroid/webkit/DownloadListener;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/MucangWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method private I()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/e$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/webview/e$f;-><init>(Lcn/mucang/android/core/webview/e;Lcn/mucang/android/core/webview/e$a;)V

    iput-object v0, p0, Lcn/mucang/android/core/webview/e;->g:Lcn/mucang/android/core/webview/e$f;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "cn.mucang.android.web.SHOW_MENU_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "cn.mucang.android.web.WEB_SETTING"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/a/a;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/a/a;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/webview/e;->g:Lcn/mucang/android/core/webview/e$f;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/c/b;->b:Landroid/view/View;

    sget v1, Lcn/mucang/android/framework/webview/R$id;->title_bar_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/webview/view/TitleBarView;

    .line 2
    new-instance v1, Lcn/mucang/android/core/webview/m/a;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/webview/m/a;-><init>(Lcn/mucang/android/core/webview/view/TitleBarView;)V

    iput-object v1, p0, Lcn/mucang/android/core/webview/e;->f:Lcn/mucang/android/core/webview/m/a;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->isShowTitleBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->f:Lcn/mucang/android/core/webview/m/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/m/a;->p(Z)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcn/mucang/android/core/webview/model/TitleBarModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/core/webview/model/TitleBarModel;-><init>(Z)V

    .line 6
    iget-object v2, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v2}, Lcn/mucang/android/core/webview/HtmlExtra;->isShowOptionButton()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->setHideRightButton(Z)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->isShowProgressBar()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->setShowProgressBar(Z)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->setTitle(Ljava/lang/String;)Lcn/mucang/android/core/webview/model/TitleBarModel;

    .line 9
    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->isUrlEditable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->setUrlEditable(Z)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->setUrl(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->isShowBackButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/model/TitleBarModel;->setShowBackButton(Z)V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->f:Lcn/mucang/android/core/webview/m/a;

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/webview/m/a;->m(Lcn/mucang/android/core/webview/model/TitleBarModel;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->f:Lcn/mucang/android/core/webview/m/a;

    new-instance v1, Lcn/mucang/android/core/webview/e$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/e$b;-><init>(Lcn/mucang/android/core/webview/e;)V

    .line 14
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/m/a;->u(Lcn/mucang/android/core/webview/m/a$c;)V

    .line 15
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->f:Lcn/mucang/android/core/webview/m/a;

    new-instance v1, Lcn/mucang/android/core/webview/e$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/e$c;-><init>(Lcn/mucang/android/core/webview/e;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/m/a;->t(Lcn/mucang/android/core/webview/m/a$b;)V

    return-void
.end method

.method static synthetic K(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public static L(Lcn/mucang/android/core/webview/HtmlExtra;)Lcn/mucang/android/core/webview/e;
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/HtmlExtra;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/webview/e;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/e;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "__core__extra_html__"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "htmlExtra and htmlExtra\'s originUrl must be not null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private M(Landroid/content/Intent;Ljava/io/File;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/webview/core/g;->C([Landroid/net/Uri;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 8
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    new-array v0, v2, [Landroid/net/Uri;

    .line 10
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v0, v1

    .line 11
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/webview/core/g;->C([Landroid/net/Uri;)V

    goto :goto_1

    .line 12
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    new-array v0, v2, [Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/webview/core/g;->C([Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method private O(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "landscape"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const-string v1, "portrait"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const-string v1, "auto"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    .line 8
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/core/webview/l/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/core/webview/l/d;-><init>(Landroidx/fragment/app/d;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getMenuOptions()Lcn/mucang/android/core/webview/MenuOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/MenuOptions;->getOptions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/l/d;->g(Ljava/lang/String;)Lcn/mucang/android/core/webview/l/d;

    new-instance v1, Lcn/mucang/android/core/webview/e$d;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/e$d;-><init>(Lcn/mucang/android/core/webview/e;)V

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/l/d;->h(Lcn/mucang/android/core/webview/l/e;)Lcn/mucang/android/core/webview/l/d;

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/l/d;->i()V

    return-void
.end method

.method private Q(Lcn/mucang/android/core/webview/HtmlExtra;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra;->isNoTopInset()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/16 v3, 0x500

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 9
    new-instance p1, Lcn/mucang/android/core/webview/a;

    invoke-direct {p1, v1, v2}, Lcn/mucang/android/core/webview/a;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic w(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/core/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    return-object p0
.end method

.method static synthetic x(Lcn/mucang/android/core/webview/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/e;->P()V

    return-void
.end method

.method static synthetic y(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/core/MucangWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/e;->e:Lcn/mucang/android/core/webview/core/MucangWebView;

    return-object p0
.end method

.method static synthetic z(Lcn/mucang/android/core/webview/e;)Lcn/mucang/android/core/webview/m/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/e;->f:Lcn/mucang/android/core/webview/m/a;

    return-object p0
.end method


# virtual methods
.method public D(Lcn/mucang/android/core/webview/core/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/core/g;->d(Lcn/mucang/android/core/webview/core/d;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->j:Ljava/util/List;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/e;->j:Ljava/util/List;

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/g;->i()V

    :cond_0
    return-void
.end method

.method protected N(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "long pressed, the hint url is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HTML5Fragment"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/e;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/core/webview/core/g;->y(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    const/high16 p2, -0x1000000

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/e;->m:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/e;->i()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/e;->i()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/core/webview/e;->n:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "landscape"

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/e;->O(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->f:Lcn/mucang/android/core/webview/m/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/m/a;->x(I)V

    return-void
.end method

.method public d(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 v5, 0x0

    .line 3
    new-instance v6, Lcn/mucang/android/core/webview/e$e;

    invoke-direct {v6, p0, p2}, Lcn/mucang/android/core/webview/e$e;-><init>(Lcn/mucang/android/core/webview/e;Landroid/webkit/SslErrorHandler;)V

    const-string v1, "\u6b64\u7f51\u7ad9\u51fa\u5177\u7684\u5b89\u5168\u8bc1\u4e66\u4e0d\u662f\u7531\u53d7\u4fe1\u7684\u8bc1\u4e66\u9881\u53d1\u673a\u6784\u9881\u53d1\u7684\u3002\u5efa\u8bae\u4e0d\u8981\u7ee7\u7eed\u6d4f\u89c8\u8be5\u7f51\u7ad9\u3002"

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    const-string v3, "\u7ee7\u7eed\u6d4f\u89c8"

    const-string v4, "\u62d2\u7edd"

    .line 4
    invoke-static/range {v0 .. v6}, Lcn/mucang/android/core/webview/k/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/android/core/webview/k/b$k;)Landroid/app/AlertDialog;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    .line 6
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p3, "str1"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    const-string p1, "core"

    const-string p3, "\u53d1\u73b0\u6709\u7591\u95eehttps\u8bc1\u4e66"

    .line 8
    invoke-static {p1, p3, p2, v0, v1}, Lcn/mucang/android/core/utils/l0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->f:Lcn/mucang/android/core/webview/m/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/m/a;->z(Ljava/lang/String;)V

    return-void
.end method

.method public f(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/e;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/core/webview/core/g;->x(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g()Lcn/mucang/android/core/webview/HtmlExtra;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    return-object v0
.end method

.method public getStatName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/HtmlExtra;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u9ed8\u8ba4HTMLWebView2"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9875\u9762-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {v1}, Lcn/mucang/android/core/webview/HtmlExtra;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/e;->O(Ljava/lang/String;)V

    return-void
.end method

.method public i()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->f:Lcn/mucang/android/core/webview/m/a;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/m/a;->v()V

    return-void
.end method

.method public k(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->f:Lcn/mucang/android/core/webview/m/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/m/a;->y(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/e;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/core/g;->B(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public n(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/e;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/core/webview/core/g;->A(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/webview/e;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->m:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/core/webview/e;->m:Landroid/view/View;

    .line 3
    iget v0, p0, Lcn/mucang/android/core/webview/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "portrait"

    .line 4
    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/e;->O(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/g;->m()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v2, :cond_2

    if-nez p3, :cond_1

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    const/16 v2, 0x7e0

    const/16 v5, 0x7e3

    const/16 v6, 0x7de

    if-nez p2, :cond_6

    if-eq p1, v6, :cond_4

    if-ne p1, v5, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v2, :cond_5

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/webview/e;->d:Lcn/mucang/android/core/webview/protocol/d/a$b;

    if-eqz p1, :cond_5

    .line 5
    invoke-interface {p1, v1, v3}, Lcn/mucang/android/core/webview/protocol/d/a$b;->a(Ljava/lang/String;Z)V

    goto :goto_3

    .line 6
    :cond_4
    :goto_2
    invoke-direct {p0, v1, v1}, Lcn/mucang/android/core/webview/e;->M(Landroid/content/Intent;Ljava/io/File;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    if-eq p1, v6, :cond_9

    if-ne p1, v5, :cond_7

    goto :goto_5

    :cond_7
    if-ne p1, v2, :cond_a

    if-eqz p3, :cond_a

    .line 7
    iget-object p1, p0, Lcn/mucang/android/core/webview/e;->d:Lcn/mucang/android/core/webview/protocol/d/a$b;

    if-nez p1, :cond_8

    return-void

    .line 8
    :cond_8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p2

    invoke-static {p2, p1}, Lcn/mucang/android/core/webview/k/c;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/permission/exception/PermissionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HTML5Fragment"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 11
    :goto_4
    iget-object p2, p0, Lcn/mucang/android/core/webview/e;->d:Lcn/mucang/android/core/webview/protocol/d/a$b;

    invoke-interface {p2, p1, v4}, Lcn/mucang/android/core/webview/protocol/d/a$b;->a(Ljava/lang/String;Z)V

    goto :goto_6

    .line 12
    :cond_9
    :goto_5
    invoke-direct {p0, p3, v0}, Lcn/mucang/android/core/webview/e;->M(Landroid/content/Intent;Ljava/io/File;)V

    :cond_a
    :goto_6
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/a/a;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/a/a;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/e;->g:Lcn/mucang/android/core/webview/e$f;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/g;->h()V

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/webview/protocol/d/a;->a()V

    .line 5
    invoke-super {p0}, Lcn/mucang/android/core/config/q;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/core/webview/e;->k:Z

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/g;->z()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/core/config/q;->onPause()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/e;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/mucang/android/core/webview/core/g;->D(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/g;->E()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/core/config/q;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/q;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    const-string v1, "save_html_extra"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/q;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "save_html_extra"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/webview/HtmlExtra;

    iput-object p1, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->f:Lcn/mucang/android/core/webview/m/a;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/m/a;->n()V

    return-void
.end method

.method public q(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
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
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/e;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/core/webview/core/g;->F(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected s()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/webview/R$layout;->core__fragment_html_web_view_new:I

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/e;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/webview/e;->i:Lcn/mucang/android/core/webview/core/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/core/webview/core/g;->I(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected t(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/e;->G()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/webview/e;->I()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/core/webview/e;->H()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/core/webview/e;->J()V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/e;->Q(Lcn/mucang/android/core/webview/HtmlExtra;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/core/webview/e;->h:Lcn/mucang/android/core/webview/HtmlExtra;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/HtmlExtra;->getOrientation()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/e;->O(Ljava/lang/String;)V

    return-void
.end method
