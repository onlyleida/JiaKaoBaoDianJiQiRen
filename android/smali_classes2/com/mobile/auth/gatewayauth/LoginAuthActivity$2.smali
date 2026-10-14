.class Lcom/mobile/auth/gatewayauth/LoginAuthActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->initDynamicView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/LinkedHashMap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;Ljava/util/LinkedHashMap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$2;->c:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$2;->a:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$2;->a:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$2;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/AuthRegisterViewConfig;->getCustomInterface()Lcom/mobile/auth/gatewayauth/CustomInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$2;->c:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-interface {p1, v0}, Lcom/mobile/auth/gatewayauth/CustomInterface;->onClick(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
