.class Lcom/mobile/auth/ab/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/ab/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mobile/auth/ab/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mobile/auth/ab/a$b;

.field final synthetic d:Lcom/mobile/auth/ab/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/ab/a;Landroid/content/Context;Ljava/lang/String;Lcom/mobile/auth/ab/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/ab/a$1;->d:Lcom/mobile/auth/ab/a;

    iput-object p2, p0, Lcom/mobile/auth/ab/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobile/auth/ab/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mobile/auth/ab/a$1;->c:Lcom/mobile/auth/ab/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/ab/a$1;->d:Lcom/mobile/auth/ab/a;

    iget-object v1, p0, Lcom/mobile/auth/ab/a$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/ab/a$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mobile/auth/ab/a;->a(Lcom/mobile/auth/ab/a;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceMobileConnectionForAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/ab/a$1;->c:Lcom/mobile/auth/ab/a$b;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/mobile/auth/ab/a$b;->a(ZLandroid/net/Network;)V
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

    :cond_0
    :goto_0
    return-void
.end method
