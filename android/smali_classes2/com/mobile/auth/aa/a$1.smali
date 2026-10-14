.class Lcom/mobile/auth/aa/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/aa/a;->a(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;Lcom/mobile/auth/aa/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Landroid/net/Network;

.field final synthetic d:Lcom/mobile/auth/aa/a$a;

.field final synthetic e:Lcom/mobile/auth/aa/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/aa/a;Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;Lcom/mobile/auth/aa/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/aa/a$1;->e:Lcom/mobile/auth/aa/a;

    iput-object p2, p0, Lcom/mobile/auth/aa/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobile/auth/aa/a$1;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/mobile/auth/aa/a$1;->c:Landroid/net/Network;

    iput-object p5, p0, Lcom/mobile/auth/aa/a$1;->d:Lcom/mobile/auth/aa/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/mobile/auth/aa/d;

    invoke-direct {v0}, Lcom/mobile/auth/aa/d;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/aa/a$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobile/auth/aa/a$1;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/mobile/auth/aa/a$1;->c:Landroid/net/Network;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobile/auth/aa/d;->a(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/aa/a$1;->d:Lcom/mobile/auth/aa/a$a;

    invoke-interface {v1, v0}, Lcom/mobile/auth/aa/a$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/ab/d;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
