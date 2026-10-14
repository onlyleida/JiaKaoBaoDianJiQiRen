.class Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;->a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;->a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-static {p2}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Landroid/widget/ProgressBar;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;->a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-static {p2}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->b(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;->a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->c(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;->a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-static {p2}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->b(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;->a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-static {p2}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->c(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;->a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->c(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u670d\u52a1\u534f\u8bae"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;->a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity$2;->a:Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;->a(Lcom/mobile/auth/gatewayauth/activity/AuthWebVeiwActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
