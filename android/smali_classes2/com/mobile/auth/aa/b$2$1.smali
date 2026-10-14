.class Lcom/mobile/auth/aa/b$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/ab/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/aa/b$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/aa/b$2;


# direct methods
.method constructor <init>(Lcom/mobile/auth/aa/b$2;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/aa/b$2$1;->a:Lcom/mobile/auth/aa/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLandroid/net/Network;)V
    .locals 7

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/mobile/auth/aa/b$2$1;->a:Lcom/mobile/auth/aa/b$2;

    iget-object v0, p1, Lcom/mobile/auth/aa/b$2;->e:Lcom/mobile/auth/aa/b;

    iget-object v1, p1, Lcom/mobile/auth/aa/b$2;->a:Landroid/content/Context;

    iget v2, p1, Lcom/mobile/auth/aa/b$2;->b:I

    iget-object v3, p1, Lcom/mobile/auth/aa/b$2;->c:Ljava/lang/String;

    const-string v4, "https://opencloud.wostore.cn/openapi/netauth/precheck/wp?"

    iget-object v6, p1, Lcom/mobile/auth/aa/b$2;->d:Lcom/mobile/auth/aa/c;

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/mobile/auth/aa/b;->a(Lcom/mobile/auth/aa/b;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/net/Network;Lcom/mobile/auth/aa/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/aa/b$2$1;->a:Lcom/mobile/auth/aa/b$2;

    iget-object p1, p1, Lcom/mobile/auth/aa/b$2;->d:Lcom/mobile/auth/aa/c;

    const/4 p2, 0x2

    const-string v0, "\u83b7\u53d6\u9274\u6743\u4fe1\u606f\u5931\u8d25"

    invoke-interface {p1, p2, v0}, Lcom/mobile/auth/aa/c;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/ab/a;->a()Lcom/mobile/auth/ab/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/ab/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
