.class Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

.field final synthetic b:Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->b:Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;

    iput-object p2, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->b:Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;

    invoke-static {v0}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;->a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "103000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->k(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)Lcom/mobile/auth/e/f;

    move-result-object p1

    iget-object p2, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    invoke-static {p2}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->j(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)Lcom/cmic/sso/sdk/a;

    move-result-object p2

    new-instance p3, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a$a;

    invoke-direct {p3, p0}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a$a;-><init>(Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;)V

    invoke-virtual {p1, p2, p3}, Lcom/mobile/auth/e/f;->a(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;Z)Z

    iget-object v0, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    const-wide/16 p1, 0x3e8

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->g(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)Lcom/cmic/sso/sdk/activity/LoginAuthActivity$g;

    move-result-object p1

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method
