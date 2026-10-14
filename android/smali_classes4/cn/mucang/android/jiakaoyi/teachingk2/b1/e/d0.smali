.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_kind_tips:I

    .line 3
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->e(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_res_loading_failed:I

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->d(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_quit:I

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->c(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/h;-><init>(Landroid/app/Activity;)V

    .line 6
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->b(Landroid/view/View$OnClickListener;)Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$a;->a()Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/e;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/e;->c()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            ">;"
        }
    .end annotation

    const-string p1, "unity\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef\uff0c\u5220\u9664\u65e7\u8d44\u6e90"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/i;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/i;-><init>(Landroid/app/Activity;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/o;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/o;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method
