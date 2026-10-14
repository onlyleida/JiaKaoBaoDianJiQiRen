.class Lcn/mucang/android/account/activity/o1/i$b;
.super Lcn/mucang/android/account/g/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/activity/o1/i;->f(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/account/g/q/a<",
        "Lcn/mucang/android/account/activity/ValidationActivity;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcn/mucang/android/account/activity/o1/i;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/activity/o1/i;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/i$b;->e:Lcn/mucang/android/account/activity/o1/i;

    iput-object p4, p0, Lcn/mucang/android/account/activity/o1/i$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/account/activity/o1/i$b;->d:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcn/mucang/android/account/g/q/a;-><init>(Lcn/mucang/android/account/activity/l1;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/mucang/android/account/activity/o1/i$b;->g(Ljava/lang/Boolean;)V

    return-void
.end method

.method public g(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/activity/o1/i$b;->e:Lcn/mucang/android/account/activity/o1/i;

    invoke-virtual {p1}, Lcn/mucang/android/account/activity/o1/g;->g()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/core/api/c/c;->f()Lcn/mucang/android/core/config/n;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/account/activity/ValidationActivity;

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
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
    iget-object v0, p0, Lcn/mucang/android/account/activity/o1/i$b;->e:Lcn/mucang/android/account/activity/o1/i;

    invoke-static {v0}, Lcn/mucang/android/account/activity/o1/i;->h(Lcn/mucang/android/account/activity/o1/i;)Lcn/mucang/android/account/g/p;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/account/activity/o1/i$b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/activity/o1/i$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/account/g/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/i$b;->h()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
