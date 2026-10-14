.class Lcom/mobile/auth/d/a$1;
.super Lcom/mobile/auth/d/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/mobile/auth/a/b;

.field final synthetic g:Lcom/mobile/auth/d/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/d/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/d/a$1;->g:Lcom/mobile/auth/d/a;

    iput-object p2, p0, Lcom/mobile/auth/d/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobile/auth/d/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mobile/auth/d/a$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mobile/auth/d/a$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mobile/auth/d/a$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/mobile/auth/d/a$1;->f:Lcom/mobile/auth/a/b;

    invoke-direct {p0}, Lcom/mobile/auth/d/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/d/a$1;->g:Lcom/mobile/auth/d/a;

    iget-object v1, p0, Lcom/mobile/auth/d/a$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/d/a$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/d/a$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/mobile/auth/d/a$1;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mobile/auth/d/a$1;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/mobile/auth/d/a;->a(Lcom/mobile/auth/d/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobile/auth/d/i$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/d/a$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/d/a$1;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/d/a$1;->f:Lcom/mobile/auth/a/b;

    invoke-static {v1, v0, v2, v3}, Lcom/mobile/auth/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
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
