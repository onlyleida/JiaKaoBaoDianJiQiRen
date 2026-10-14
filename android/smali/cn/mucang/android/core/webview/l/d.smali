.class public Lcn/mucang/android/core/webview/l/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/d;

.field private b:Ljava/lang/String;

.field private c:Lcn/mucang/android/core/webview/l/e;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/l/d;->a:Landroidx/fragment/app/d;

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/l/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "refresh,copy"

    .line 2
    iput-object v0, p0, Lcn/mucang/android/core/webview/l/d;->b:Ljava/lang/String;

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/webview/l/d;->b:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 6
    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private b(ZZLcn/mucang/android/core/webview/l/c;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcn/mucang/android/framework/webview/R$layout;->core__h5_view_share_copy_refresh:I

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-nez p1, :cond_1

    .line 2
    sget p1, Lcn/mucang/android/framework/webview/R$id;->btn_copy:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_1
    sget p1, Lcn/mucang/android/framework/webview/R$id;->btn_copy:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcn/mucang/android/core/webview/l/a;

    invoke-direct {v2, p0, p3}, Lcn/mucang/android/core/webview/l/a;-><init>(Lcn/mucang/android/core/webview/l/d;Lcn/mucang/android/core/webview/l/c;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    if-nez p2, :cond_2

    .line 4
    sget p1, Lcn/mucang/android/framework/webview/R$id;->btn_refresh:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_2
    sget p1, Lcn/mucang/android/framework/webview/R$id;->btn_refresh:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/core/webview/l/b;

    invoke-direct {p2, p0, p3}, Lcn/mucang/android/core/webview/l/b;-><init>(Lcn/mucang/android/core/webview/l/d;Lcn/mucang/android/core/webview/l/c;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-object v0
.end method

.method private synthetic c(Lcn/mucang/android/core/webview/l/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/core/webview/l/d;->c:Lcn/mucang/android/core/webview/l/e;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcn/mucang/android/core/webview/l/e;->b()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method

.method private synthetic e(Lcn/mucang/android/core/webview/l/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/core/webview/l/d;->c:Lcn/mucang/android/core/webview/l/e;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcn/mucang/android/core/webview/l/e;->a()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lf/a/a/a/n/d/f;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic d(Lcn/mucang/android/core/webview/l/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/l/d;->c(Lcn/mucang/android/core/webview/l/c;Landroid/view/View;)V

    return-void
.end method

.method public synthetic f(Lcn/mucang/android/core/webview/l/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/l/d;->e(Lcn/mucang/android/core/webview/l/c;Landroid/view/View;)V

    return-void
.end method

.method public g(Ljava/lang/String;)Lcn/mucang/android/core/webview/l/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/l/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public h(Lcn/mucang/android/core/webview/l/e;)Lcn/mucang/android/core/webview/l/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/l/d;->c:Lcn/mucang/android/core/webview/l/e;

    return-object p0
.end method

.method public i()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/l/d;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/core/webview/l/c;

    invoke-direct {v1}, Lcn/mucang/android/core/webview/l/c;-><init>()V

    const-string v2, "copy"

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "refresh"

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcn/mucang/android/core/webview/l/d;->b(ZZLcn/mucang/android/core/webview/l/c;)Landroid/view/View;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcn/mucang/android/core/webview/l/d;->a:Landroidx/fragment/app/d;

    invoke-virtual {v1, v2, v0}, Lcn/mucang/android/core/webview/l/c;->t(Landroidx/fragment/app/d;Landroid/view/View;)V

    return-void
.end method
