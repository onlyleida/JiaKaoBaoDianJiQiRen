.class Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/api/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/core/api/c/a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->d:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    iput-object p2, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->c:Ljava/lang/String;

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
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->e(Ljava/lang/Void;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->d:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Void;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->d:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-static {p1}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->g(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)Lcn/mucang/android/core/api/verify/e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/core/api/verify/e;->c(ZLjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->d:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public f()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->d:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-static {v0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->a(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)Lcn/mucang/android/core/api/verify/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->d:Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;

    invoke-static {v1}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;->c(Lcn/mucang/android/core/api/verify/GeetestVerifyActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->b:Ljava/lang/String;

    iget-object v4, p0, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/core/api/verify/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lcn/mucang/android/core/api/verify/GeetestVerifyActivity$e;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
