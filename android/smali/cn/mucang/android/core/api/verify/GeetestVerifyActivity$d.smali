.class Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/verify/geetest/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->k(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$d;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$d;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    const-string v1, "\u52a0\u8f7d\u9a8c\u8bc1\u7801\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$d;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$d;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$d;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->b(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method public d(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$d;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    const-string v0, "geetest_challenge"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "geetest_validate"

    .line 3
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "geetest_seccode"

    .line 4
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2, v0, v1, p1}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->f(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$d;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    const/4 p2, 0x0

    const-string v0, "\u9a8c\u8bc1\u5931\u8d25"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
