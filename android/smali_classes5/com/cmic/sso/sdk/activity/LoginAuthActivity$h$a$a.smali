.class Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 6

    iget-object v0, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;

    iget-object v0, v0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->b:Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;

    invoke-static {v0}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;->a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "loginTime"

    invoke-virtual {p3, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p3, v0, v3, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;J)V

    :cond_1
    const-string v0, "phonescrip"

    invoke-virtual {p3, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "103000"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "authClickSuccess"

    invoke-static {v0}, Lcom/mobile/auth/k/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;

    iget-object v0, v0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;

    iget-object v0, v0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;Z)Z

    const-string v0, "authClickFailed"

    invoke-static {v0}, Lcom/mobile/auth/k/c;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;

    iget-object v0, v0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    const-wide/16 p1, 0x3e8

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;

    iget-object p1, p1, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$h$a;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->g(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)Lcom/cmic/sso/sdk/activity/LoginAuthActivity$g;

    move-result-object p1

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
