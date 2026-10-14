.class public Lcn/mucang/android/core/webview/HtmlExtra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/webview/HtmlExtra$b;
    }
.end annotation


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private loadUrlWithPost:Z

.field private menuOptions:Lcn/mucang/android/core/webview/MenuOptions;

.field private noTopInset:Z

.field private openAsync:Z

.field private orientation:Ljava/lang/String;

.field private originUrl:Ljava/lang/String;

.field private paramsMode:Lcn/mucang/android/core/webview/ParamsMode;

.field private postData:[B

.field private r:Ljava/lang/String;

.field private shareCurrentPage:Z

.field private showBackButton:Z

.field private showCloseButton:Z

.field private showOptionButton:Z

.field private showProgressBar:Z

.field private showTitleBar:Z

.field private sslTrustAll:Z

.field private statisticsId:Ljava/lang/String;

.field private statisticsName:Ljava/lang/String;

.field private supportLongPressed:Z

.field private supportNativeRequestLocation:Z

.field private title:Ljava/lang/String;

.field private urlEditable:Z


# direct methods
.method private constructor <init>(Lcn/mucang/android/core/webview/HtmlExtra$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->noTopInset:Z

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->a(Lcn/mucang/android/core/webview/HtmlExtra$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->originUrl:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->b(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showOptionButton:Z

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->m(Lcn/mucang/android/core/webview/HtmlExtra$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->title:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->r(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showBackButton:Z

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->s(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showCloseButton:Z

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->t(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showProgressBar:Z

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->u(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showTitleBar:Z

    .line 11
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->v(Lcn/mucang/android/core/webview/HtmlExtra$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->orientation:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->w(Lcn/mucang/android/core/webview/HtmlExtra$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->statisticsId:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->x(Lcn/mucang/android/core/webview/HtmlExtra$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->statisticsName:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->c(Lcn/mucang/android/core/webview/HtmlExtra$b;)Lcn/mucang/android/core/webview/MenuOptions;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->menuOptions:Lcn/mucang/android/core/webview/MenuOptions;

    .line 15
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->d(Lcn/mucang/android/core/webview/HtmlExtra$b;)Lcn/mucang/android/core/webview/ParamsMode;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->paramsMode:Lcn/mucang/android/core/webview/ParamsMode;

    .line 16
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->e(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->openAsync:Z

    .line 17
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->f(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->urlEditable:Z

    .line 18
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->g(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->supportLongPressed:Z

    .line 19
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->h(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->supportNativeRequestLocation:Z

    .line 20
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->i(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->loadUrlWithPost:Z

    .line 21
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->j(Lcn/mucang/android/core/webview/HtmlExtra$b;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->postData:[B

    .line 22
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->k(Lcn/mucang/android/core/webview/HtmlExtra$b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->headers:Ljava/util/Map;

    .line 23
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->l(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->shareCurrentPage:Z

    .line 24
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->n(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->sslTrustAll:Z

    .line 25
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->o(Lcn/mucang/android/core/webview/HtmlExtra$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->noTopInset:Z

    .line 26
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->p(Lcn/mucang/android/core/webview/HtmlExtra$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->i:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcn/mucang/android/core/webview/HtmlExtra$b;->q(Lcn/mucang/android/core/webview/HtmlExtra$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/webview/HtmlExtra;->r:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/webview/HtmlExtra$b;Lcn/mucang/android/core/webview/HtmlExtra$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/HtmlExtra;-><init>(Lcn/mucang/android/core/webview/HtmlExtra$b;)V

    return-void
.end method

.method static synthetic access$2400(Lcn/mucang/android/core/webview/HtmlExtra;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->originUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showOptionButton:Z

    return p0
.end method

.method static synthetic access$2600(Lcn/mucang/android/core/webview/HtmlExtra;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showBackButton:Z

    return p0
.end method

.method static synthetic access$2800(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showCloseButton:Z

    return p0
.end method

.method static synthetic access$2900(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showProgressBar:Z

    return p0
.end method

.method static synthetic access$3000(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showTitleBar:Z

    return p0
.end method

.method static synthetic access$3100(Lcn/mucang/android/core/webview/HtmlExtra;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->orientation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcn/mucang/android/core/webview/HtmlExtra;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->statisticsId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcn/mucang/android/core/webview/HtmlExtra;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->statisticsName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lcn/mucang/android/core/webview/HtmlExtra;)Lcn/mucang/android/core/webview/MenuOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->menuOptions:Lcn/mucang/android/core/webview/MenuOptions;

    return-object p0
.end method

.method static synthetic access$3500(Lcn/mucang/android/core/webview/HtmlExtra;)Lcn/mucang/android/core/webview/ParamsMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->paramsMode:Lcn/mucang/android/core/webview/ParamsMode;

    return-object p0
.end method

.method static synthetic access$3600(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->openAsync:Z

    return p0
.end method

.method static synthetic access$3700(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->urlEditable:Z

    return p0
.end method

.method static synthetic access$3800(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->supportLongPressed:Z

    return p0
.end method

.method static synthetic access$3900(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->supportNativeRequestLocation:Z

    return p0
.end method

.method static synthetic access$4000(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->loadUrlWithPost:Z

    return p0
.end method

.method static synthetic access$4100(Lcn/mucang/android/core/webview/HtmlExtra;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->postData:[B

    return-object p0
.end method

.method static synthetic access$4200(Lcn/mucang/android/core/webview/HtmlExtra;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->headers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$4300(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->shareCurrentPage:Z

    return p0
.end method

.method static synthetic access$4400(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->sslTrustAll:Z

    return p0
.end method

.method static synthetic access$4500(Lcn/mucang/android/core/webview/HtmlExtra;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->noTopInset:Z

    return p0
.end method

.method static synthetic access$4600(Lcn/mucang/android/core/webview/HtmlExtra;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4700(Lcn/mucang/android/core/webview/HtmlExtra;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->r:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuOptions()Lcn/mucang/android/core/webview/MenuOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->menuOptions:Lcn/mucang/android/core/webview/MenuOptions;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/webview/MenuOptions;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/MenuOptions;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->menuOptions:Lcn/mucang/android/core/webview/MenuOptions;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->menuOptions:Lcn/mucang/android/core/webview/MenuOptions;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsMode()Lcn/mucang/android/core/webview/ParamsMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->paramsMode:Lcn/mucang/android/core/webview/ParamsMode;

    return-object v0
.end method

.method public getPostData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->postData:[B

    return-object v0
.end method

.method public getR()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticsId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->statisticsId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticsName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->statisticsName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isHideOptionButton()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showOptionButton:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLoadUrlWithPost()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->loadUrlWithPost:Z

    return v0
.end method

.method public isNoTopInset()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->noTopInset:Z

    return v0
.end method

.method public isOpenAsync()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->openAsync:Z

    return v0
.end method

.method public isShareCurrentPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->shareCurrentPage:Z

    return v0
.end method

.method public isShowBackButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showBackButton:Z

    return v0
.end method

.method public isShowCloseButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showCloseButton:Z

    return v0
.end method

.method public isShowOptionButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showOptionButton:Z

    return v0
.end method

.method public isShowProgressBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showProgressBar:Z

    return v0
.end method

.method public isShowTitleBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->showTitleBar:Z

    return v0
.end method

.method public isSslTrustAll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->sslTrustAll:Z

    return v0
.end method

.method public isSupportLongPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->supportLongPressed:Z

    return v0
.end method

.method public isSupportNativeRequestLocation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->supportNativeRequestLocation:Z

    return v0
.end method

.method public isUrlEditable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/HtmlExtra;->urlEditable:Z

    return v0
.end method

.method public updateMenuOptions(Lcn/mucang/android/core/webview/MenuOptions;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/HtmlExtra;->menuOptions:Lcn/mucang/android/core/webview/MenuOptions;

    :cond_0
    return-void
.end method
