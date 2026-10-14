.class Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->quitLoginPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$1;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    iput-wide p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$1;->a:J

    iput-wide p4, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$1;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->c()Lcom/mobile/auth/o/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$1;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->b()Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v1

    const-string v2, ""

    const-string v3, "sdk.quit.auth"

    invoke-static {}, Lcom/mobile/auth/gatewayauth/model/UStruct;->newUStruct()Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-wide v5, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$1;->a:J

    invoke-virtual {v4, v5, v6}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->startTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    iget-wide v5, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$1;->b:J

    invoke-virtual {v4, v5, v6}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->endTime(J)Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/gatewayauth/model/UStruct$Builder;->build()Lcom/mobile/auth/gatewayauth/model/UStruct;

    move-result-object v4

    iget-object v5, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$1;->c:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {v5}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v5

    invoke-interface {v5}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->getApiLevel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mobile/auth/gatewayauth/manager/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/UStruct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/o/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
