.class public Lcn/mucang/android/core/ui/page/c;
.super Lcn/mucang/android/core/config/q;
.source "SourceFile"


# instance fields
.field private b:Lcn/mucang/android/core/ui/page/d;

.field private c:Z

.field private d:Lcn/mucang/android/core/webview/protocol/d/a$b;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/mucang/android/core/webview/core/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/q;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/core/ui/page/c;->c:Z

    return-void
.end method

.method static synthetic r(Lcn/mucang/android/core/ui/page/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/c;->t()V

    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/c;->e:Ljava/util/Set;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/c;->b:Lcn/mucang/android/core/ui/page/d;

    invoke-virtual {v0}, Lcn/mucang/android/core/ui/page/d;->q()Lcn/mucang/android/core/ui/page/b;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcn/mucang/android/core/webview/core/page/WebViewPage;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcn/mucang/android/core/webview/core/page/WebViewPage;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/core/ui/page/c;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/core/webview/core/d;

    .line 6
    invoke-virtual {v0, v2}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->addJsBridge(Lcn/mucang/android/core/webview/core/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static u(Lcn/mucang/android/core/ui/page/PageAppConfig;Ljava/lang/Class;Lcn/mucang/android/core/ui/page/PageArgument;)Lcn/mucang/android/core/ui/page/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/core/ui/page/PageAppConfig;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/core/ui/page/b;",
            ">;",
            "Lcn/mucang/android/core/ui/page/PageArgument;",
            ")",
            "Lcn/mucang/android/core/ui/page/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__app_config"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "__page_class"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "__page_argument"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5
    new-instance p0, Lcn/mucang/android/core/ui/page/c;

    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/c;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5c0f\u7a0b\u5e8f-Fragment"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 v2, 0x309

    const/4 v3, 0x0

    if-nez p2, :cond_2

    if-ne p1, v2, :cond_1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/c;->d:Lcn/mucang/android/core/webview/protocol/d/a$b;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1, v3, v0}, Lcn/mucang/android/core/webview/protocol/d/a$b;->a(Ljava/lang/String;Z)V

    .line 3
    iput-object v3, p0, Lcn/mucang/android/core/ui/page/c;->d:Lcn/mucang/android/core/webview/protocol/d/a$b;

    :cond_1
    return-void

    :cond_2
    if-ne p1, v2, :cond_4

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/c;->d:Lcn/mucang/android/core/webview/protocol/d/a$b;

    if-nez p1, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p2

    invoke-static {p2, p1}, Lcn/mucang/android/core/webview/k/c;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcn/mucang/android/core/permission/exception/PermissionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PermissionException"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PageFragment"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 8
    :goto_1
    iget-object p2, p0, Lcn/mucang/android/core/ui/page/c;->d:Lcn/mucang/android/core/webview/protocol/d/a$b;

    invoke-interface {p2, p1, v1}, Lcn/mucang/android/core/webview/protocol/d/a$b;->a(Ljava/lang/String;Z)V

    .line 9
    iput-object v3, p0, Lcn/mucang/android/core/ui/page/c;->d:Lcn/mucang/android/core/webview/protocol/d/a$b;

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "__app_config"

    .line 3
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/core/ui/page/PageAppConfig;

    const-string v0, "__page_class"

    .line 4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "__page_argument"

    .line 5
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/core/ui/page/PageArgument;

    .line 6
    new-instance v1, Lcn/mucang/android/core/ui/page/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcn/mucang/android/core/ui/page/d;-><init>(Landroid/content/Context;Lcn/mucang/android/core/ui/page/PageAppConfig;)V

    iput-object v1, p0, Lcn/mucang/android/core/ui/page/c;->b:Lcn/mucang/android/core/ui/page/d;

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/core/ui/page/d;->p()Landroid/widget/FrameLayout;

    move-result-object p3

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object p3, p0, Lcn/mucang/android/core/ui/page/c;->b:Lcn/mucang/android/core/ui/page/d;

    new-instance v1, Lcn/mucang/android/core/ui/page/PageHistory;

    invoke-direct {v1, v0, p2}, Lcn/mucang/android/core/ui/page/PageHistory;-><init>(Ljava/lang/Class;Lcn/mucang/android/core/ui/page/PageArgument;)V

    invoke-virtual {p3, v1}, Lcn/mucang/android/core/ui/page/d;->x(Lcn/mucang/android/core/ui/page/PageHistory;)V

    .line 9
    iget-object p2, p0, Lcn/mucang/android/core/ui/page/c;->b:Lcn/mucang/android/core/ui/page/d;

    new-instance p3, Lcn/mucang/android/core/ui/page/c$a;

    invoke-direct {p3, p0}, Lcn/mucang/android/core/ui/page/c$a;-><init>(Lcn/mucang/android/core/ui/page/c;)V

    invoke-virtual {p2, p3}, Lcn/mucang/android/core/ui/page/d;->D(Lcn/mucang/android/core/ui/page/a;)V

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/c;->t()V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/q;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/c;->b:Lcn/mucang/android/core/ui/page/d;

    invoke-virtual {v0}, Lcn/mucang/android/core/ui/page/d;->r()Lcn/mucang/android/core/ui/page/PageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/core/ui/page/PageView;->doPause()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/core/ui/page/c;->c:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/q;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/c;->b:Lcn/mucang/android/core/ui/page/d;

    invoke-virtual {v0}, Lcn/mucang/android/core/ui/page/d;->r()Lcn/mucang/android/core/ui/page/PageView;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcn/mucang/android/core/ui/page/c;->c:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/ui/page/PageView;->doResume(Lcn/mucang/android/core/ui/page/PageArgument;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/core/ui/page/c;->c:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/q;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/c;->b:Lcn/mucang/android/core/ui/page/d;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/ui/page/d;->w(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/q;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/c;->b:Lcn/mucang/android/core/ui/page/d;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/ui/page/d;->v(Landroid/os/Bundle;)V

    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/c;->b:Lcn/mucang/android/core/ui/page/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/core/ui/page/d;->q()Lcn/mucang/android/core/ui/page/b;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/core/webview/core/page/WebViewPage;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/c;->b:Lcn/mucang/android/core/ui/page/d;

    invoke-virtual {v0}, Lcn/mucang/android/core/ui/page/d;->q()Lcn/mucang/android/core/ui/page/b;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/webview/core/page/WebViewPage;

    invoke-virtual {v0}, Lcn/mucang/android/core/webview/core/page/WebViewPage;->sendBackEvent()V

    :cond_0
    return-void
.end method
