.class Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;
.super Lcom/mobile/auth/k/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/sso/sdk/activity/LoginAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cmic/sso/sdk/activity/LoginAuthActivity;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;)V
    .locals 1

    invoke-direct {p0}, Lcom/mobile/auth/k/u$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;->a:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;->b()Z

    move-result p0

    return p0
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;

    iget-object v1, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;Z)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method protected a()V
    .locals 5

    iget-object v0, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    invoke-static {v0}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->i(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->k(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)Lcom/mobile/auth/e/f;

    move-result-object v1

    invoke-static {v0}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->j(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)Lcom/cmic/sso/sdk/a;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;

    invoke-direct {v4, p0, v0}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;-><init>(Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/mobile/auth/e/f;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;Lcom/mobile/auth/e/g;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->k(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)Lcom/mobile/auth/e/f;

    move-result-object v1

    invoke-static {v0}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->j(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)Lcom/cmic/sso/sdk/a;

    move-result-object v2

    new-instance v3, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$b;

    invoke-direct {v3, p0, v0}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$b;-><init>(Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/mobile/auth/e/f;->a(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V

    :goto_0
    return-void
.end method
