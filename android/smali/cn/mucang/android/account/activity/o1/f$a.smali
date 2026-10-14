.class Lcn/mucang/android/account/activity/o1/f$a;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/o1/f;->d(Landroid/view/View;)V
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

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcn/mucang/android/account/activity/o1/f;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/o1/f;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/f$a;->e:Lcn/mucang/android/account/activity/o1/f;

    iput-object p4, p0, Lcn/mucang/android/account/activity/o1/f$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/account/activity/o1/f$a;->d:Landroid/view/View;

    invoke-direct {p0, p2, p3}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/account/api/data/CheckSmsResponse;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/o1/f$a;->g(Lcn/mucang/android/account/api/data/CheckSmsResponse;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/account/g/q/a;->c(Ljava/lang/Exception;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/activity/o1/f$a;->d:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/f$a;->e:Lcn/mucang/android/account/activity/o1/f;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/f;->h(Lcn/mucang/android/account/activity/o1/f;)Lcn/mucang/android/account/g/m;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/activity/o1/f$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/g/m;->f(Ljava/lang/String;)Lcn/mucang/android/account/api/data/CheckSmsResponse;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/f$a;->h()Lcn/mucang/android/account/api/data/CheckSmsResponse;

    move-result-object v0

    return-object v0
.end method
