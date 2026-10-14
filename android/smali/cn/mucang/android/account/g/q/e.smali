.class public Lcn/mucang/android/account/g/q/e;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/g/q/a<",
        "Lcn/mucang/android/account/activity/CheckUserActivity;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field c:Lcn/mucang/android/account/g/g;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/CheckUserActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "\u9a8c\u8bc1\u8eab\u4efd"

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcn/mucang/android/account/g/g;

    invoke-direct {p1}, Lcn/mucang/android/account/g/g;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/g/q/e;->c:Lcn/mucang/android/account/g/g;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/account/g/q/e;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/account/g/q/e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/g/q/e;->g(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/account/activity/CheckUserActivity;

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "__change_phone_session_id__"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

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
    iget-object v0, p0, Lcn/mucang/android/account/g/q/e;->c:Lcn/mucang/android/account/g/g;

    iget-object v1, p0, Lcn/mucang/android/account/g/q/e;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/g/q/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/account/g/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/g/q/e;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
