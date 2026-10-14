.class Lcn/mucang/android/account/activity/o1/e$b;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/o1/e;->f(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/g/q/a<",
        "Lcn/mucang/android/account/activity/ValidationActivity;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcn/mucang/android/account/activity/o1/e;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/o1/e;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/e$b;->e:Lcn/mucang/android/account/activity/o1/e;

    iput-object p4, p0, Lcn/mucang/android/account/activity/o1/e$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/account/activity/o1/e$b;->d:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/o1/e$b;->g(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/ValidationActivity;

    .line 2
    new-instance v1, Lcn/mucang/android/account/activity/SetPasswordActivity$b;

    invoke-direct {v1, v0}, Lcn/mucang/android/account/activity/SetPasswordActivity$b;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1, p1}, Lcn/mucang/android/account/activity/SetPasswordActivity$b;->d(Ljava/lang/String;)Lcn/mucang/android/account/activity/SetPasswordActivity$b;

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/account/activity/ValidationActivity;->y()Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getSmsId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/mucang/android/account/activity/SetPasswordActivity$b;->c(Ljava/lang/String;)Lcn/mucang/android/account/activity/SetPasswordActivity$b;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v1, p1}, Lcn/mucang/android/account/activity/SetPasswordActivity$b;->b(I)Lcn/mucang/android/account/activity/SetPasswordActivity$b;

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/account/activity/SetPasswordActivity$b;->a()Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x524

    .line 7
    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/e$b;->e:Lcn/mucang/android/account/activity/o1/e;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/e;->h(Lcn/mucang/android/account/activity/o1/e;)Lcn/mucang/android/account/g/i;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/activity/o1/e$b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/activity/o1/e$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/account/g/i;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/e$b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
