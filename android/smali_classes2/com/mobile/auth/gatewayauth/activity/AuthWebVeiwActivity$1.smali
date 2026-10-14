.class Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$1;->a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$1;->a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
