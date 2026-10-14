.class Lcn/mucang/android/account/activity/o1/c$b;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/o1/c;->e(Landroid/view/View;)V
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
.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/mucang/android/account/activity/o1/c;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/o1/c;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/c$b;->d:Lcn/mucang/android/account/activity/o1/c;

    iput-object p4, p0, Lcn/mucang/android/account/activity/o1/c$b;->c:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/o1/c$b;->g(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method

.method public g(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/ValidationActivity;

    invoke-virtual {v0, p1}, Lcn/mucang/android/account/activity/ValidationActivity;->S(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/activity/o1/c$b;->d:Lcn/mucang/android/account/activity/o1/c;

    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/account/activity/o1/c;->l(Lcn/mucang/android/account/activity/o1/c;Landroid/app/Activity;)V

    return-void
.end method

.method public h()Lcn/mucang/android/account/api/data/CheckSmsResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/c$b;->d:Lcn/mucang/android/account/activity/o1/c;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/c;->k(Lcn/mucang/android/account/activity/o1/c;)Lcn/mucang/android/account/g/c;

    move-result-object v1

    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/c$b;->d:Lcn/mucang/android/account/activity/o1/c;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/c;->h(Lcn/mucang/android/account/activity/o1/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/c$b;->d:Lcn/mucang/android/account/activity/o1/c;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/c;->i(Lcn/mucang/android/account/activity/o1/c;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/c$b;->d:Lcn/mucang/android/account/activity/o1/c;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/c;->j(Lcn/mucang/android/account/activity/o1/c;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/mucang/android/account/activity/o1/c$b;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/ValidationActivity;

    invoke-virtual {v0}, Lcn/mucang/android/account/activity/ValidationActivity;->y()Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/CheckSmsResponse;->getCheckType()Lcn/mucang/android/account/api/data/CheckType;

    move-result-object v6

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/account/g/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/api/data/CheckType;)Lcn/mucang/android/account/api/data/CheckSmsResponse;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/c$b;->h()Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    return-object v0
.end method
