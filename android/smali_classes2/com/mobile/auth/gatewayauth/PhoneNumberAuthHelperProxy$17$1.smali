.class Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17$1;
.super Lcom/mobile/auth/gatewayauth/utils/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->a(Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

.field final synthetic b:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17$1;->b:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17$1;->a:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/utils/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17$1;->b:Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;

    iget-object v0, v0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17;->e:Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelperProxy$17$1;->a:Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;

    invoke-interface {v0, v1}, Lcom/mobile/auth/gatewayauth/OnLoginPhoneListener;->onGetLoginPhone(Lcom/mobile/auth/gatewayauth/model/LoginPhoneInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
