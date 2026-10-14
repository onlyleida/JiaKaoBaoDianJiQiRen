.class public Lcn/mucang/android/account/k/a;
.super Lcn/mucang/android/ui/framework/mvp/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/account/k/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/ui/framework/mvp/a<",
        "Lcn/mucang/android/account/ui/CaptchaView;",
        "Lcn/mucang/android/account/data/CaptchaModel;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcn/mucang/android/account/data/CaptchaModel;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/ui/CaptchaView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/mvp/a;-><init>(Lcn/mucang/android/ui/framework/mvp/b;)V

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/account/k/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/k/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method

.method static synthetic l(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method

.method static synthetic m(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method

.method static synthetic n(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method

.method static synthetic o(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method

.method static synthetic p(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method

.method static synthetic q(Lcn/mucang/android/account/k/a;)Lcn/mucang/android/ui/framework/mvp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/ui/framework/mvp/BaseModel;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/data/CaptchaModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/k/a;->r(Lcn/mucang/android/account/data/CaptchaModel;)V

    return-void
.end method

.method public r(Lcn/mucang/android/account/data/CaptchaModel;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/account/k/a;->b:Lcn/mucang/android/account/data/CaptchaModel;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/account/k/a;->u()V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast p1, Lcn/mucang/android/account/ui/CaptchaView;

    invoke-virtual {p1}, Lcn/mucang/android/account/ui/CaptchaView;->getRefresh()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/account/k/a$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/account/k/a$a;-><init>(Lcn/mucang/android/account/k/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/mvp/a;->a:Lcn/mucang/android/ui/framework/mvp/b;

    check-cast v0, Lcn/mucang/android/account/ui/CaptchaView;

    invoke-virtual {v0}, Lcn/mucang/android/account/ui/CaptchaView;->getCode()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/k/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public u()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/account/k/a$b;

    iget-object v1, p0, Lcn/mucang/android/account/k/a;->b:Lcn/mucang/android/account/data/CaptchaModel;

    iget-object v1, v1, Lcn/mucang/android/account/data/CaptchaModel;->requestUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/account/k/a$b;-><init>(Lcn/mucang/android/account/k/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method
