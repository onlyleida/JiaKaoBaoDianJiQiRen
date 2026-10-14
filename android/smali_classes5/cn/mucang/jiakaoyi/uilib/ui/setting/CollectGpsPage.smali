.class public Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingCollectGpsActivityBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private final c:Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage$a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;

    return-void
.end method

.method static synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->d:Z

    return p0
.end method

.method static synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;

    return-object p0
.end method

.method private synthetic l(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic n(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->d:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->d:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingCollectGpsActivityBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingCollectGpsActivityBinding;->action:Landroid/widget/Button;

    const-string v0, "\u7ed3\u675f\u91c7\u96c6"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingCollectGpsActivityBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingCollectGpsActivityBinding;->action:Landroid/widget/Button;

    const-string v0, "\u5f00\u59cb\u91c7\u96c6"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->g()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "Gps\u91c7\u96c6"

    return-object v0
.end method

.method public synthetic m(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->l(Landroid/view/View;)V

    return-void
.end method

.method public synthetic o(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->n(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingCollectGpsActivityBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingCollectGpsActivityBinding;->back:Landroid/widget/Button;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/o;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/o;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingCollectGpsActivityBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingCollectGpsActivityBinding;->action:Landroid/widget/Button;

    const-string v0, "\u5f00\u59cb\u91c7\u96c6"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->d:Z

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingCollectGpsActivityBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingCollectGpsActivityBinding;->action:Landroid/widget/Button;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/p;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/p;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->g()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/CollectGpsPage;->b:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method
