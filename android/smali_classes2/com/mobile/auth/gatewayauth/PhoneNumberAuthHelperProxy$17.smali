.class Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/gatewayauth/manager/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->getLoginMaskPhone(ILjava/lang/String;Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;ZZLjava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
        "Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;",
        "Lcom/mobile/auth/gatewayauth/manager/base/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;

.field final synthetic f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->b:Z

    iput-object p4, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->c:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->e:Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mobile/auth/gatewayauth/manager/base/c;)V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->i(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/manager/d;->i()V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/manager/base/c;->g()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->c:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    new-instance v9, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17$2;

    invoke-direct {v9, p0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17$2;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v10

    iget-object v11, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->d:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;)V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;->setVendor(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->f:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->b:Z

    const-string v4, "600000"

    const-string v5, "\u83b7\u53d6\u63a9\u7801\u6210\u529f"

    const-string v6, ""

    iget-object v7, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->c:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    const/4 v9, 0x0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->j(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;)Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v10

    iget-object v11, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->d:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy;->a(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;Lcom/mobile/auth/gatewayauth/TokenResultListener;Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;Ljava/lang/String;)V

    new-instance v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17$1;

    invoke-direct {v0, p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17$1;-><init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;)V

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/b;->a(Lcom/mobile/auth/gatewayauth/utils/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic onError(Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    check-cast p1, Lcom/mobile/auth/gatewayauth/manager/base/c;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->a(Lcom/mobile/auth/gatewayauth/manager/base/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    check-cast p1, Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    invoke-virtual {p0, p1}, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->a(Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
