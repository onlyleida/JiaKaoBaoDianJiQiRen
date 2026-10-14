.class Lcom/mobile/auth/d/e$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/d/e;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/d/e;


# direct methods
.method constructor <init>(Lcom/mobile/auth/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/e$2;->a:Lcom/mobile/auth/d/e;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mobile/auth/d/e$2;->a:Lcom/mobile/auth/d/e;

    invoke-static {v2}, Lcom/mobile/auth/d/e;->d(Lcom/mobile/auth/d/e;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {v2, v0, v1}, Lcom/mobile/auth/d/e;->a(Lcom/mobile/auth/d/e;J)J

    iget-object v0, p0, Lcom/mobile/auth/d/e$2;->a:Lcom/mobile/auth/d/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobile/auth/d/e;->a(Lcom/mobile/auth/d/e;Z)Z

    iget-object v0, p0, Lcom/mobile/auth/d/e$2;->a:Lcom/mobile/auth/d/e;

    invoke-static {v0}, Lcom/mobile/auth/d/e;->b(Lcom/mobile/auth/d/e;)Lcom/mobile/auth/d/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/d/e$2;->a:Lcom/mobile/auth/d/e;

    invoke-static {v0}, Lcom/mobile/auth/d/e;->b(Lcom/mobile/auth/d/e;)Lcom/mobile/auth/d/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/d/e$2;->a:Lcom/mobile/auth/d/e;

    invoke-static {v1}, Lcom/mobile/auth/d/e;->e(Lcom/mobile/auth/d/e;)J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lcom/mobile/auth/d/e$a;->a(Landroid/net/Network;J)V

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/d/e$2;->a:Lcom/mobile/auth/d/e;

    invoke-static {p1}, Lcom/mobile/auth/d/e;->f(Lcom/mobile/auth/d/e;)Landroid/net/ConnectivityManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/mobile/auth/d/e$2;->a:Lcom/mobile/auth/d/e;

    invoke-static {p1}, Lcom/mobile/auth/d/e;->f(Lcom/mobile/auth/d/e;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object p1, p0, Lcom/mobile/auth/d/e$2;->a:Lcom/mobile/auth/d/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mobile/auth/d/e;->a(Lcom/mobile/auth/d/e;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lcom/mobile/auth/d/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "switchToMobileForAboveL"

    invoke-static {v0, v1, p1}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
