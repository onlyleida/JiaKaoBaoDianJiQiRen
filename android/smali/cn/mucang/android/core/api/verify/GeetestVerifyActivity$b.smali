.class Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/core/api/c/a<",
        "Lcn/mucang/android/core/api/verify/geetest/GeetestCheckInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/core/api/verify/geetest/GeetestCheckInfo;

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;->e(Lcn/mucang/android/core/api/verify/geetest/GeetestCheckInfo;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lcn/mucang/android/core/api/verify/geetest/GeetestCheckInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->b(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/k;->b(Landroid/app/Dialog;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/verify/geetest/GeetestCheckInfo;->getReqId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->d(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/api/verify/geetest/GeetestCheckInfo;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    const-string v1, "gt"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "challenge"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    .line 5
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 6
    invoke-static {v0, v1, v2, p1}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->e(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public f()Lcn/mucang/android/core/api/verify/geetest/GeetestCheckInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;->a:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->a(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)Lcn/mucang/android/core/api/verify/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/verify/c;->c()Lcn/mucang/android/core/api/verify/geetest/GeetestCheckInfo;

    move-result-object v0

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
    invoke-virtual {p0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$b;->f()Lcn/mucang/android/core/api/verify/geetest/GeetestCheckInfo;

    move-result-object v0

    return-object v0
.end method
