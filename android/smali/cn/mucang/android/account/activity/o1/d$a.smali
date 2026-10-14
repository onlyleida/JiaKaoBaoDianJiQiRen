.class Lcn/mucang/android/account/activity/o1/d$a;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/o1/d;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/g/q/a<",
        "Lcn/mucang/android/account/activity/ValidationActivity;",
        "Lcn/mucang/android/account/api/data/PopupCaptchaResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcn/mucang/android/account/activity/o1/d;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/o1/d;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/d$a;->c:Lcn/mucang/android/account/activity/o1/d;

    invoke-direct {p0, p2, p3}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic g(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/ValidationActivity;

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->Q(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/o1/d$a;->i(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V

    return-void
.end method

.method public synthetic h(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/o1/d$a;->g(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method

.method public i(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/ValidationActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/ValidationActivity;

    invoke-virtual {v0}, Lcn/mucang/android/account/activity/ValidationActivity;->z()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/d$a;->c:Lcn/mucang/android/account/activity/o1/d;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/d;->i(Lcn/mucang/android/account/activity/o1/d;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/d$a;->c:Lcn/mucang/android/account/activity/o1/d;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/d;->h(Lcn/mucang/android/account/activity/o1/d;)I

    move-result v5

    new-instance v6, Lcn/mucang/android/account/activity/o1/a;

    invoke-direct {v6, p0}, Lcn/mucang/android/account/activity/o1/a;-><init>(Lcn/mucang/android/account/activity/o1/d$a;)V

    move-object v2, p1

    .line 3
    invoke-static/range {v1 .. v6}, Lcn/mucang/android/account/h/b;->D(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;Ljava/lang/String;ILcn/mucang/android/account/h/e$b;)V

    return-void
.end method

.method public j()Lcn/mucang/android/account/api/data/PopupCaptchaResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/d$a;->c:Lcn/mucang/android/account/activity/o1/d;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/d;->h(Lcn/mucang/android/account/activity/o1/d;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/api/open/v3/change-phone-by-certified/request-captcha.htm"

    goto :goto_0

    :cond_0
    const-string v0, "/api/open/v3/change-phone/request-captcha.htm"

    .line 2
    :goto_0
    new-instance v1, Lcn/mucang/android/account/g/a;

    invoke-direct {v1}, Lcn/mucang/android/account/g/a;-><init>()V

    invoke-virtual {v1, v0}, Lcn/mucang/android/account/g/a;->b(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    const-class v1, Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    return-object v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/d$a;->j()Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    move-result-object v0

    return-object v0
.end method
