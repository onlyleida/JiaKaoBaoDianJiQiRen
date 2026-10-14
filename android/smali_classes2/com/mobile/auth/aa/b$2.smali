.class Lcom/mobile/auth/aa/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/aa/b;->a(Landroid/content/Context;ILjava/lang/String;Lcom/mobile/auth/aa/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mobile/auth/aa/c;

.field final synthetic e:Lcom/mobile/auth/aa/b;


# direct methods
.method constructor <init>(Lcom/mobile/auth/aa/b;Landroid/content/Context;ILjava/lang/String;Lcom/mobile/auth/aa/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/aa/b$2;->e:Lcom/mobile/auth/aa/b;

    iput-object p2, p0, Lcom/mobile/auth/aa/b$2;->a:Landroid/content/Context;

    iput p3, p0, Lcom/mobile/auth/aa/b$2;->b:I

    iput-object p4, p0, Lcom/mobile/auth/aa/b$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mobile/auth/aa/b$2;->d:Lcom/mobile/auth/aa/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/ab/a;->a()Lcom/mobile/auth/ab/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/aa/b$2;->a:Landroid/content/Context;

    const-string v2, "https://opencloud.wostore.cn/openapi/netauth/precheck/wp?"

    new-instance v3, Lcom/mobile/auth/aa/b$2$1;

    invoke-direct {v3, p0}, Lcom/mobile/auth/aa/b$2$1;-><init>(Lcom/mobile/auth/aa/b$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobile/auth/ab/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mobile/auth/ab/a$b;)V
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
