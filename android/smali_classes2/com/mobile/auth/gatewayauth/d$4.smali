.class Lcom/mobile/auth/gatewayauth/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/d;->a(Ljava/lang/String;JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:J

.field final synthetic e:Lcom/mobile/auth/gatewayauth/d;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/d;Ljava/lang/String;ZZJ)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/d$4;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mobile/auth/gatewayauth/d$4;->b:Z

    iput-boolean p4, p0, Lcom/mobile/auth/gatewayauth/d$4;->c:Z

    iput-wide p5, p0, Lcom/mobile/auth/gatewayauth/d$4;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->d(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/o/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/d;->h(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/d$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/d;->g(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v3

    iget-object v4, p0, Lcom/mobile/auth/gatewayauth/d$4;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mobile/auth/gatewayauth/model/UStruct;->newUStruct()Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->b:Z

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->isSuccess(Z)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/d;->f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isDialog()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->isFullScreen(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->c:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->isVertical(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/d;->f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isCheckboxHidden()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/d;->f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isPrivacyState()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v6, 0x1

    :cond_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->isChecked(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/d;->f()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->isCheckboxHidden()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->isCheckboxHidden(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/d;->h(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/manager/d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->requestId(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/d;->h(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobile/auth/gatewayauth/manager/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->sessionId(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-wide v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->d:J

    invoke-virtual {v4, v5, v6}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->startTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/d;->j(Lcom/mobile/auth/gatewayauth/d;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->endTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->b:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/d;->i(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v5

    const-string v6, "6000"

    :goto_1
    invoke-interface {v5, v6}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/d$4;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/d;->i(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v5

    const-string v6, "-10001"

    goto :goto_1

    :goto_2
    invoke-virtual {v4, v5}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->authSdkCode(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->build()Lcom/mobile/auth/gatewayauth/model/UStruct;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mobile/auth/gatewayauth/manager/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/UStruct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/mobile/auth/o/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
