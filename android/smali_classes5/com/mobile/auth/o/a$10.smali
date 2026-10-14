.class Lcom/mobile/auth/o/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/o/a;->b([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/mobile/auth/o/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/o/a;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/o/a$10;->b:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/o/a$10;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/o/a$10;->b:Lcom/mobile/auth/o/a;

    iget-object v1, p0, Lcom/mobile/auth/o/a$10;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/f;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/o/a$10;->b:Lcom/mobile/auth/o/a;

    invoke-static {v1}, Lcom/mobile/auth/o/a;->d(Lcom/mobile/auth/o/a;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/o/a$10;->b:Lcom/mobile/auth/o/a;

    invoke-static {v1}, Lcom/mobile/auth/o/a;->f(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/o/a$10;->b:Lcom/mobile/auth/o/a;

    invoke-static {v2}, Lcom/mobile/auth/o/a;->e(Lcom/mobile/auth/o/a;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/mobile/auth/gatewayauth/manager/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nirvana/tools/logger/ACMLogger;->debug(Ljava/lang/String;)V
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
