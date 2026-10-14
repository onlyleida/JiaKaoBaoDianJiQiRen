.class public Lcn/mucang/android/core/webview/core/page/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/mucang/android/core/webview/core/i;

.field private f:Lcn/mucang/android/core/ui/page/d;

.field private g:Lcn/mucang/android/core/webview/core/page/WebViewPage;

.field private h:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/core/page/WebViewPage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/core/page/f;->d:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/f;->g:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/webview/core/page/f;)Lcn/mucang/android/core/ui/page/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/page/f;->f:Lcn/mucang/android/core/ui/page/d;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/core/webview/core/page/f;)Lcn/mucang/android/core/webview/core/page/WebViewPage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/core/page/f;->g:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    return-object p0
.end method

.method private m(Landroid/net/Uri;)Lcn/mucang/android/core/webview/core/page/WebPageArgument;
    .locals 10

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;-><init>()V

    :try_start_0
    const-string v1, "showTitleBar"

    .line 2
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/MiscUtils;->o(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "transition"

    .line 3
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/mucang/android/core/utils/MiscUtils;->o(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "fullScreen"

    .line 4
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcn/mucang/android/core/utils/MiscUtils;->o(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "baseWidth"

    .line 5
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2d0

    invoke-static {v5, v6}, Lcn/mucang/android/core/utils/y;->h(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "background"

    .line 6
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "titleBar"

    .line 7
    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "statusBar"

    .line 8
    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "name"

    .line 9
    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v5}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setBaseWidth(I)V

    .line 11
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setShowTitleBar(Z)V

    .line 12
    invoke-virtual {v0, v3}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setTransition(Z)V

    .line 13
    invoke-virtual {v0, v4}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setFullScreen(Z)V

    .line 14
    invoke-virtual {v0, v6}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setBackground(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setPageNme(Ljava/lang/String;)V

    .line 16
    const-class p1, Lcn/mucang/android/core/webview/core/page/TitleBar;

    invoke-static {v7, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/webview/core/page/TitleBar;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setTitleBar(Lcn/mucang/android/core/webview/core/page/TitleBar;)V

    .line 17
    const-class p1, Lcn/mucang/android/core/webview/core/page/StatusBar;

    invoke-static {v8, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/webview/core/page/StatusBar;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setStatusBar(Lcn/mucang/android/core/webview/core/page/StatusBar;)V

    .line 18
    invoke-virtual {v0, v2}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setHasConfig(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "e"

    .line 19
    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private s(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "type"

    .line 1
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    .line 2
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {p1, v1, v2}, Lcn/mucang/android/core/utils/y;->j(Ljava/lang/String;J)J

    move-result-wide v1

    .line 4
    new-instance p1, Lcn/mucang/android/core/widget/datepick/a$g;

    invoke-direct {p1}, Lcn/mucang/android/core/widget/datepick/a$g;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Lcn/mucang/android/core/widget/datepick/a$g;->c(Ljava/lang/String;)Lcn/mucang/android/core/widget/datepick/a$g;

    .line 6
    invoke-virtual {p1, v1, v2}, Lcn/mucang/android/core/widget/datepick/a$g;->d(J)Lcn/mucang/android/core/widget/datepick/a$g;

    new-instance v0, Lcn/mucang/android/core/webview/core/page/f$e;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/webview/core/page/f$e;-><init>(Lcn/mucang/android/core/webview/core/page/f;)V

    .line 7
    invoke-virtual {p1, v0}, Lcn/mucang/android/core/widget/datepick/a$g;->b(Lcn/mucang/android/core/widget/datepick/a$h;)Lcn/mucang/android/core/widget/datepick/a$g;

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/core/widget/datepick/a$g;->a()Lcn/mucang/android/core/widget/datepick/a;

    move-result-object p1

    .line 9
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Landroidx/fragment/app/d;

    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Landroidx/fragment/app/d;

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "\u9009\u62e9\u65e5\u671f"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcn/mucang/android/core/webview/core/page/h;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f;->d:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcn/mucang/android/core/webview/core/page/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/f;->e:Lcn/mucang/android/core/webview/core/i;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/core/webview/core/i;->onProtocolDataChanged()V

    :cond_1
    return-void
.end method

.method public d(Lcn/mucang/android/core/webview/core/page/h;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f;->d:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcn/mucang/android/core/webview/core/page/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/f;->e:Lcn/mucang/android/core/webview/core/i;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/core/webview/core/i;->onProtocolDataChanged()V

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "PageProtocol"

    const-string v0, ""

    .line 1
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/webview/core/page/f;->e:Lcn/mucang/android/core/webview/core/i;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/core/webview/core/i;->onProtocolDataChanged()V

    :cond_1
    return-void
.end method

.method declared-synchronized f(Landroid/net/Uri;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 3
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, -0x1

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "/system/datePicker"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "/page/ready"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "/system/keyboard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "/page/open"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "/page/back"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "/page/saveInstanceState"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_6
    const-string v2, "/page/setTheme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/core/page/f;->s(Landroid/net/Uri;)V

    goto :goto_1

    :pswitch_1
    const-string v0, "show"

    .line 6
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/mucang/android/core/utils/MiscUtils;->o(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "type"

    .line 7
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/f;->g:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-virtual {v1, v0, p1}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->keyboard(ZLjava/lang/String;)V

    goto :goto_1

    .line 9
    :pswitch_2
    new-instance p1, Lcn/mucang/android/core/webview/core/page/f$d;

    invoke-direct {p1, p0}, Lcn/mucang/android/core/webview/core/page/f$d;-><init>(Lcn/mucang/android/core/webview/core/page/f;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 10
    iput-boolean v3, p0, Lcn/mucang/android/core/webview/core/page/f;->h:Z

    goto :goto_1

    .line 11
    :pswitch_3
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f;->g:Lcn/mucang/android/core/webview/core/page/WebViewPage;

    if-eqz v0, :cond_3

    .line 12
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/core/page/f;->m(Landroid/net/Uri;)Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    move-result-object p1

    .line 13
    new-instance v0, Lcn/mucang/android/core/webview/core/page/f$c;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/webview/core/page/f$c;-><init>(Lcn/mucang/android/core/webview/core/page/f;Lcn/mucang/android/core/webview/core/page/WebPageArgument;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 14
    :pswitch_4
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/core/page/f;->m(Landroid/net/Uri;)Lcn/mucang/android/core/webview/core/page/WebPageArgument;

    move-result-object v0

    const-string v1, "url"

    .line 15
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/webview/core/page/WebPageArgument;->setUrl(Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcn/mucang/android/core/webview/core/page/f$b;

    invoke-direct {v1, p0, v0, p1}, Lcn/mucang/android/core/webview/core/page/f$b;-><init>(Lcn/mucang/android/core/webview/core/page/f;Lcn/mucang/android/core/webview/core/page/WebPageArgument;Landroid/net/Uri;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 17
    :pswitch_5
    new-instance v0, Lcn/mucang/android/core/webview/core/page/f$a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/webview/core/page/f$a;-><init>(Lcn/mucang/android/core/webview/core/page/f;Landroid/net/Uri;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_6
    const-string v0, "data"

    .line 18
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/f;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x6f5855c8 -> :sswitch_6
        -0x3a898612 -> :sswitch_5
        0xb7df918 -> :sswitch_4
        0xb841a7b -> :sswitch_3
        0x429e23b8 -> :sswitch_2
        0x65246b92 -> :sswitch_1
        0x7760e96d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f;->d:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method j(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/page/event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/f;->h:Z

    return v0
.end method

.method l(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/page/saveInstanceState"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/f;->a:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method p(Lcn/mucang/android/core/webview/core/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/f;->e:Lcn/mucang/android/core/webview/core/i;

    return-void
.end method

.method q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/f;->b:Ljava/lang/String;

    return-void
.end method

.method r(Lcn/mucang/android/core/ui/page/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/f;->f:Lcn/mucang/android/core/ui/page/d;

    return-void
.end method
