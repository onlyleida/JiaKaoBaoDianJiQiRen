.class Lcn/mucang/android/account/activity/o1/c$c;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/o1/c;->f(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/g/q/a<",
        "Lcn/mucang/android/account/activity/ValidationActivity;",
        "Lcn/mucang/android/account/api/data/UserInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcn/mucang/android/account/activity/o1/c;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/o1/c;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/c$c;->e:Lcn/mucang/android/account/activity/o1/c;

    iput-object p4, p0, Lcn/mucang/android/account/activity/o1/c$c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/account/activity/o1/c$c;->d:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/UserInfoResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/o1/c$c;->g(Lcn/mucang/android/account/api/data/UserInfoResponse;)V

    return-void
.end method

.method public g(Lcn/mucang/android/account/api/data/UserInfoResponse;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/ValidationActivity;

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/account/activity/l1;->h()Lcn/mucang/android/account/data/AccountBaseModel;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/mucang/android/account/f;->e(Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/data/AccountBaseModel;)V

    const-string p1, "\u7b2c\u4e09\u65b9\u767b\u5f55\u7ed1\u5b9a\u624b\u673a\u53f7\u6210\u529f"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/account/n/a;->onEvent(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public h()Lcn/mucang/android/account/api/data/UserInfoResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/c$c;->e:Lcn/mucang/android/account/activity/o1/c;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/c;->k(Lcn/mucang/android/account/activity/o1/c;)Lcn/mucang/android/account/g/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/activity/o1/c$c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/activity/o1/c$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/account/g/c;->h(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/account/api/data/UserInfoResponse;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/c$c;->h()Lcn/mucang/android/account/api/data/UserInfoResponse;

    move-result-object v0

    return-object v0
.end method
