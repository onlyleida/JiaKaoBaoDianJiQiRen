.class public Lcom/mobile/auth/u/c;
.super Lcom/nirvana/tools/requestqueue/TimeoutResponse;
.source "SourceFile"


# instance fields
.field private a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirvana/tools/requestqueue/TimeoutResponse;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(ZLcom/mobile/auth/gatewayauth/model/ConfigRule;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirvana/tools/requestqueue/TimeoutResponse;-><init>(Z)V

    iput-object p2, p0, Lcom/mobile/auth/u/c;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    return-void
.end method


# virtual methods
.method public a()Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/u/c;->a:Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public isResultTimeout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
