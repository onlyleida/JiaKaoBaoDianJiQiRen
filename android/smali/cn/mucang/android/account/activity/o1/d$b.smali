.class Lcn/mucang/android/account/activity/o1/d$b;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/o1/d;->f(Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic d:Lcn/mucang/android/account/activity/o1/d;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/o1/d;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/d$b;->d:Lcn/mucang/android/account/activity/o1/d;

    iput-object p4, p0, Lcn/mucang/android/account/activity/o1/d$b;->c:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/o1/d$b;->g(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/d$b;->d:Lcn/mucang/android/account/activity/o1/d;

    invoke-virtual {v0}, Lcn/mucang/android/account/activity/o1/g;->g()V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/account/f;->l(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/account/activity/ValidationActivity;

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/d$b;->d:Lcn/mucang/android/account/activity/o1/d;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/d;->j(Lcn/mucang/android/account/activity/o1/d;)Lcn/mucang/android/account/g/g;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/activity/o1/d$b;->d:Lcn/mucang/android/account/activity/o1/d;

    invoke-static {v1}, Lcn/mucang/android/account/activity/o1/d;->i(Lcn/mucang/android/account/activity/o1/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/account/activity/o1/d$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/account/activity/o1/d$b;->d:Lcn/mucang/android/account/activity/o1/d;

    invoke-static {v3}, Lcn/mucang/android/account/activity/o1/d;->h(Lcn/mucang/android/account/activity/o1/d;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/account/g/g;->i(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/d$b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
