.class Lcom/mobile/auth/ab/a$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobile/auth/ab/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/ab/a;

.field private b:Lcom/mobile/auth/ab/a$b;


# direct methods
.method public constructor <init>(Lcom/mobile/auth/ab/a;Lcom/mobile/auth/ab/a$b;)V
    .locals 4

    iput-object p1, p0, Lcom/mobile/auth/ab/a$a;->a:Lcom/mobile/auth/ab/a;

    const-wide/16 v0, 0xbb8

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-object p2, p0, Lcom/mobile/auth/ab/a$a;->b:Lcom/mobile/auth/ab/a$b;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/ab/a$a;->b:Lcom/mobile/auth/ab/a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/ab/a$a;->a:Lcom/mobile/auth/ab/a;

    invoke-static {v0}, Lcom/mobile/auth/ab/a;->a(Lcom/mobile/auth/ab/a;)Lcom/mobile/auth/ab/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/ab/a$a;->b:Lcom/mobile/auth/ab/a$b;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/mobile/auth/ab/a$b;->a(ZLandroid/net/Network;)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/ab/a$a;->a:Lcom/mobile/auth/ab/a;

    invoke-static {v0, v1}, Lcom/mobile/auth/ab/a;->a(Lcom/mobile/auth/ab/a;Lcom/mobile/auth/ab/a$a;)Lcom/mobile/auth/ab/a$a;
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

.method public onTick(J)V
    .locals 0

    return-void
.end method
