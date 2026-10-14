.class Lcom/mobile/auth/d/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/d/e;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mobile/auth/d/e;


# direct methods
.method constructor <init>(Lcom/mobile/auth/d/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/e$1;->b:Lcom/mobile/auth/d/e;

    iput p2, p0, Lcom/mobile/auth/d/e$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/d/e$1;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v1, "timeoutCheckRunnable exception!"

    const/16 v2, 0x9c4

    if-le v0, v2, :cond_1

    const-wide/16 v3, 0x9c4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/mobile/auth/d/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v0}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/mobile/auth/d/e$1;->b:Lcom/mobile/auth/d/e;

    invoke-static {v0}, Lcom/mobile/auth/d/e;->a(Lcom/mobile/auth/d/e;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/d/e$1;->b:Lcom/mobile/auth/d/e;

    invoke-static {v0}, Lcom/mobile/auth/d/e;->b(Lcom/mobile/auth/d/e;)Lcom/mobile/auth/d/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/d/e$1;->b:Lcom/mobile/auth/d/e;

    invoke-static {v0}, Lcom/mobile/auth/d/e;->b(Lcom/mobile/auth/d/e;)Lcom/mobile/auth/d/e$a;

    move-result-object v0

    const v1, 0x13ba0

    const-string v2, "WIFI\u5207\u6362\u8d85\u65f6"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mobile/auth/d/e$a;->a(ILjava/lang/String;J)V

    :cond_0
    invoke-static {}, Lcom/mobile/auth/d/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5207\u6362\u7f51\u7edc\u8d85\u65f6(L)"

    invoke-static {v0, v1}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/d/e$1;->b:Lcom/mobile/auth/d/e;

    invoke-static {v0}, Lcom/mobile/auth/d/e;->c(Lcom/mobile/auth/d/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_1
    :try_start_3
    iget v0, p0, Lcom/mobile/auth/d/e$1;->a:I

    if-gt v0, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 v0, v0, -0x9c4

    :goto_1
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/mobile/auth/d/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Lcom/mobile/auth/d/e$1;->b:Lcom/mobile/auth/d/e;

    invoke-static {v0}, Lcom/mobile/auth/d/e;->b(Lcom/mobile/auth/d/e;)Lcom/mobile/auth/d/e$a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobile/auth/d/e$1;->b:Lcom/mobile/auth/d/e;

    invoke-static {v0}, Lcom/mobile/auth/d/e;->b(Lcom/mobile/auth/d/e;)Lcom/mobile/auth/d/e$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobile/auth/d/e$a;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method
