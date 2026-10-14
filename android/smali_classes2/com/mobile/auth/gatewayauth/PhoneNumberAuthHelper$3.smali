.class Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->a(JLjava/lang/String;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->e:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iput-object p4, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->c:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 11

    :try_start_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->e:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "-10001"

    const-string v4, "\u5524\u8d77\u6388\u6743\u9875\u5931\u8d25"

    const-string p1, "-10001"

    const-string v5, "\u5524\u8d77\u6388\u6743\u9875\u5931\u8d25"

    invoke-static {p1, v5}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->a:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v9, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->c:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    iget-object v10, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v10}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    :try_start_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->e:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;->b(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;)Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "6000"

    const-string v4, "\u5524\u8d77\u6388\u6743\u9875\u6210\u529f"

    const-string v5, ""

    iget-object v6, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->a:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->b:Lcom/mobile/auth/gatewayauth/TokenResultListener;

    iget-object v9, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->c:Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    iget-object v10, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper$3;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v10}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
