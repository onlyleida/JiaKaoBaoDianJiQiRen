.class Lcom/mobile/auth/s/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/s/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

.field final synthetic b:Lcom/mobile/auth/s/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/s/a;Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/s/a$4;->b:Lcom/mobile/auth/s/a;

    iput-object p2, p0, Lcom/mobile/auth/s/a$4;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/s/a$4;->b:Lcom/mobile/auth/s/a;

    invoke-static {v0}, Lcom/mobile/auth/s/a;->a(Lcom/mobile/auth/s/a;)Lcom/mobile/auth/o/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/s/a$4;->b:Lcom/mobile/auth/s/a;

    invoke-static {v1}, Lcom/mobile/auth/s/a;->b(Lcom/mobile/auth/s/a;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/s/a$4;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/manager/d;->a(Lcom/mobile/auth/gatewayauth/model/MonitorStruct;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/s/a$4;->a:Lcom/mobile/auth/gatewayauth/model/MonitorStruct;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/MonitorStruct;->getUrgency()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mobile/auth/o/a;->a(Ljava/lang/String;I)V
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
