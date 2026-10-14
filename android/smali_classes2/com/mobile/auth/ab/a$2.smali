.class Lcom/mobile/auth/ab/a$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/ab/a;->a(Landroid/content/Context;Lcom/mobile/auth/ab/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/ab/a$b;

.field final synthetic b:Lcom/mobile/auth/ab/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/ab/a;Lcom/mobile/auth/ab/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/ab/a$2;->b:Lcom/mobile/auth/ab/a;

    iput-object p2, p0, Lcom/mobile/auth/ab/a$2;->a:Lcom/mobile/auth/ab/a$b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/mobile/auth/ab/a$2;->b:Lcom/mobile/auth/ab/a;

    invoke-static {v1}, Lcom/mobile/auth/ab/a;->a(Lcom/mobile/auth/ab/a;)Lcom/mobile/auth/ab/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/ab/a$2;->b:Lcom/mobile/auth/ab/a;

    invoke-static {v1}, Lcom/mobile/auth/ab/a;->a(Lcom/mobile/auth/ab/a;)Lcom/mobile/auth/ab/a$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v1, p0, Lcom/mobile/auth/ab/a$2;->b:Lcom/mobile/auth/ab/a;

    invoke-static {v1, v0}, Lcom/mobile/auth/ab/a;->a(Lcom/mobile/auth/ab/a;Lcom/mobile/auth/ab/a$a;)Lcom/mobile/auth/ab/a$a;

    iget-object v1, p0, Lcom/mobile/auth/ab/a$2;->a:Lcom/mobile/auth/ab/a$b;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/mobile/auth/ab/a$b;->a(ZLandroid/net/Network;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/mobile/auth/ab/a$2;->a:Lcom/mobile/auth/ab/a$b;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/mobile/auth/ab/a$b;->a(ZLandroid/net/Network;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
