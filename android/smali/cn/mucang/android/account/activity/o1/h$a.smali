.class Lcn/mucang/android/account/activity/o1/h$a;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/o1/h;->d(Landroid/view/View;)V
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


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/o1/h;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
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

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/o1/h$a;->i(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V

    return-void
.end method

.method public synthetic h(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/o1/h$a;->g(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method

.method public i(Lcn/mucang/android/account/api/data/PopupCaptchaResponse;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/ValidationActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/account/activity/o1/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/activity/o1/b;-><init>(Lcn/mucang/android/account/activity/o1/h$a;)V

    invoke-static {v0, p1, v1}, Lcn/mucang/android/account/h/c;->D(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Lcn/mucang/android/account/h/e$b;)V

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
    new-instance v0, Lcn/mucang/android/account/g/a;

    invoke-direct {v0}, Lcn/mucang/android/account/g/a;-><init>()V

    const-string v1, "/api/open/v3/change-phone/request-captcha.htm"

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/g/a;->b(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    const-class v1, Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    .line 2
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
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/h$a;->j()Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    move-result-object v0

    return-object v0
.end method
