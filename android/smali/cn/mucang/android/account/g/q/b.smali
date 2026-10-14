.class public Lcn/mucang/android/account/g/q/b;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/g/q/a<",
        "Lcn/mucang/android/account/activity/AuthRealNameActivity;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field c:Lcn/mucang/android/account/g/e;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/AuthRealNameActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "\u5b9e\u540d\u8ba4\u8bc1"

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcn/mucang/android/account/g/e;

    invoke-direct {p1}, Lcn/mucang/android/account/g/e;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/g/q/b;->c:Lcn/mucang/android/account/g/e;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/account/g/q/b;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/account/g/q/b;->e:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/account/g/q/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/g/q/b;->g(Ljava/lang/Boolean;)V

    return-void
.end method

.method public g(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/AuthRealNameActivity;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/account/f;->h(Z)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/account/g/q/b;->f:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcn/mucang/android/account/g/q/b;->f:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/account/g/q/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/account/g/q/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__account_login_extra_data__"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->q()Landroidx/localbroadcastmanager/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/localbroadcastmanager/a/a;->d(Landroid/content/Intent;)Z

    :cond_0
    const/4 p1, -0x1

    .line 7
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public h()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/AuthRealNameActivity;

    invoke-virtual {v0}, Lcn/mucang/android/account/activity/AuthRealNameActivity;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/g/q/b;->c:Lcn/mucang/android/account/g/e;

    iget-object v1, p0, Lcn/mucang/android/account/g/q/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/g/q/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/account/g/e;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/account/g/q/b;->c:Lcn/mucang/android/account/g/e;

    iget-object v1, p0, Lcn/mucang/android/account/g/q/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/g/q/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/account/g/e;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/g/q/b;->h()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
