.class Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/sso/sdk/activity/LoginAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

.field private b:Lcom/cmic/sso/sdk/a;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->b:Lcom/cmic/sso/sdk/a;

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->a(Z)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Z)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->c:Z

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, v0, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "\u8bf7\u6c42\u8d85\u65f6"

    const-string v1, "102507"

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "resultCode"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "resultString"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object v3, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;Z)Z

    const-string v3, "authClickFailed"

    invoke-static {v3}, Lcom/mobile/auth/k/c;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    invoke-static {v3}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->g(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;)Lcom/cmic/sso/sdk/activity/LoginAuthActivity$g;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v3, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->b:Lcom/cmic/sso/sdk/a;

    const-string v4, "loginTime"

    invoke-virtual {v3, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->b:Lcom/cmic/sso/sdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v3, v4, v7, v8}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;J)V

    :cond_0
    iget-object v3, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->a:Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    iget-object v4, p0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity$i;->b:Lcom/cmic/sso/sdk/a;

    invoke-static {v3, v1, v0, v4, v2}, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/activity/LoginAuthActivity;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method
