.class Lcom/mobile/auth/o/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/o/a;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/mobile/auth/o/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/o/a;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/o/a$7;->c:Lcom/mobile/auth/o/a;

    iput-object p2, p0, Lcom/mobile/auth/o/a$7;->a:Ljava/lang/String;

    iput p3, p0, Lcom/mobile/auth/o/a$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/o/a$7;->c:Lcom/mobile/auth/o/a;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CacheMonitor:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mobile/auth/o/a$7;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\n Urgency "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/mobile/auth/o/a$7;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->b([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/o/a$7;->c:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->d(Lcom/mobile/auth/o/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/o/a$7;->c:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->c(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/o/a$7;->a:Ljava/lang/String;

    iget v2, p0, Lcom/mobile/auth/o/a$7;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/nirvana/tools/logger/ACMMonitor;->monitor(Ljava/lang/String;I)V
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
