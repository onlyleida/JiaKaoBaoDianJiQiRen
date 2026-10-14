.class public Lcom/mobile/auth/gatewayauth/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/gatewayauth/ui/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/mobile/auth/gatewayauth/ui/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ui/b$a;->a(Lcom/mobile/auth/gatewayauth/ui/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/ui/b;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ui/b$a;->b(Lcom/mobile/auth/gatewayauth/ui/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/ui/b;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ui/b$a;->c(Lcom/mobile/auth/gatewayauth/ui/b$a;)I

    move-result p1

    iput p1, p0, Lcom/mobile/auth/gatewayauth/ui/b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobile/auth/gatewayauth/ui/b$a;Lcom/mobile/auth/gatewayauth/ui/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/ui/b;-><init>(Lcom/mobile/auth/gatewayauth/ui/b$a;)V

    return-void
.end method

.method public static a()Lcom/mobile/auth/gatewayauth/ui/b$a;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/mobile/auth/gatewayauth/ui/b$a;

    invoke-direct {v1, v0}, Lcom/mobile/auth/gatewayauth/ui/b$a;-><init>(Lcom/mobile/auth/gatewayauth/ui/b$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/ui/b;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/ui/b;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/mobile/auth/gatewayauth/ui/b;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method
