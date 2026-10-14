.class Lcn/mucang/android/account/activity/o1/i$a;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/o1/i;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/g/q/a<",
        "Lcn/mucang/android/account/activity/ValidationActivity;",
        "Lcn/mucang/android/account/api/data/CheckSmsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcn/mucang/android/account/activity/o1/i;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/o1/i;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/i$a;->c:Lcn/mucang/android/account/activity/o1/i;

    invoke-direct {p0, p2, p3}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/o1/i$a;->g(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method

.method public g(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/ValidationActivity;

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->Q(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method

.method public h()Lcn/mucang/android/account/api/data/CheckSmsResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/i$a;->c:Lcn/mucang/android/account/activity/o1/i;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/i;->h(Lcn/mucang/android/account/activity/o1/i;)Lcn/mucang/android/account/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/g/p;->f()Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0
    :try_end_0
    .catch Lcn/mucang/android/core/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x4e37

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/android/account/api/data/CheckType;->TRUE:Lcn/mucang/android/account/api/data/CheckType;

    invoke-static {v0}, Lcn/mucang/android/account/f;->i(Lcn/mucang/android/account/api/data/CheckType;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/account/activity/ValidationActivity;

    const/4 v2, -0x1

    .line 5
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 7
    invoke-static {v0}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getMockResponse(Lcn/mucang/android/account/api/data/CheckType;)Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    throw v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/i$a;->h()Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    return-object v0
.end method
