.class Lcom/mobile/auth/gatewayauth/LoginAuthActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->initProtocolView()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$7;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$7;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/d;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$7;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$200(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Lcom/mobile/auth/gatewayauth/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mobile/auth/gatewayauth/d;->a(Z)V

    :goto_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$7;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$000(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity$7;->a:Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-static {p2}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->access$600(Lcom/mobile/auth/gatewayauth/LoginAuthActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setActivated(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
