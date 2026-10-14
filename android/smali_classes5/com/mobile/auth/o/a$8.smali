.class Lcom/mobile/auth/o/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/o/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mobile/auth/o/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/o/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/o/a$8;->b:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/o/a$8;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->b:Lcom/mobile/auth/o/a;

    new-instance v1, Lcom/mobile/auth/v/c;

    invoke-direct {v1}, Lcom/mobile/auth/v/c;-><init>()V

    invoke-static {v0, v1}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;Lcom/mobile/auth/v/a;)Lcom/mobile/auth/v/a;

    new-instance v0, Lcom/mobile/auth/v/b;

    invoke-direct {v0}, Lcom/mobile/auth/v/b;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/o/a$8;->b:Lcom/mobile/auth/o/a;

    invoke-static {v1}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;)Lcom/mobile/auth/v/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobile/auth/v/a;->a(Lcom/mobile/auth/gatewayauth/b;)V

    iget-object v1, p0, Lcom/mobile/auth/o/a$8;->b:Lcom/mobile/auth/o/a;

    new-instance v2, Lcom/mobile/auth/v/d;

    invoke-direct {v2}, Lcom/mobile/auth/v/d;-><init>()V

    invoke-static {v1, v2}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;Lcom/mobile/auth/v/a;)Lcom/mobile/auth/v/a;

    iget-object v1, p0, Lcom/mobile/auth/o/a$8;->b:Lcom/mobile/auth/o/a;

    invoke-static {v1}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/mobile/auth/v/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobile/auth/v/a;->a(Lcom/mobile/auth/gatewayauth/b;)V

    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->b:Lcom/mobile/auth/o/a;

    new-instance v1, Lcom/nirvana/tools/logger/ACMLogger;

    iget-object v2, p0, Lcom/mobile/auth/o/a$8;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobile/auth/o/a$8;->b:Lcom/mobile/auth/o/a;

    invoke-static {v3}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;)Lcom/mobile/auth/v/a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nirvana/tools/logger/ACMLogger;-><init>(Landroid/content/Context;Lcom/nirvana/tools/logger/upload/ACMUpload;)V

    invoke-static {v0, v1}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;Lcom/nirvana/tools/logger/ACMLogger;)Lcom/nirvana/tools/logger/ACMLogger;

    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->b:Lcom/mobile/auth/o/a;

    new-instance v1, Lcom/nirvana/tools/logger/ACMMonitor;

    iget-object v2, p0, Lcom/mobile/auth/o/a$8;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobile/auth/o/a$8;->b:Lcom/mobile/auth/o/a;

    invoke-static {v3}, Lcom/mobile/auth/o/a;->b(Lcom/mobile/auth/o/a;)Lcom/mobile/auth/v/a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nirvana/tools/logger/ACMMonitor;-><init>(Landroid/content/Context;Lcom/nirvana/tools/logger/upload/ACMUpload;)V

    invoke-static {v0, v1}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/o/a;Lcom/nirvana/tools/logger/ACMMonitor;)Lcom/nirvana/tools/logger/ACMMonitor;

    iget-object v0, p0, Lcom/mobile/auth/o/a$8;->b:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->c(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/ACMMonitor;->setUploadType(I)V
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
