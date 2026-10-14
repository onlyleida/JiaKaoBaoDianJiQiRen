.class Lcom/mobile/auth/o/a$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/o/a;->a(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lcom/mobile/auth/o/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/o/a;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/o/a$14;->d:Lcom/mobile/auth/o/a;

    iput-wide p2, p0, Lcom/mobile/auth/o/a$14;->a:J

    iput-wide p4, p0, Lcom/mobile/auth/o/a$14;->b:J

    iput p6, p0, Lcom/mobile/auth/o/a$14;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/o/a$14;->d:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->d(Lcom/mobile/auth/o/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/o/a$14;->d:Lcom/mobile/auth/o/a;

    invoke-static {v0}, Lcom/mobile/auth/o/a;->f(Lcom/mobile/auth/o/a;)Lcom/nirvana/tools/logger/ACMLogger;

    move-result-object v1

    iget-wide v2, p0, Lcom/mobile/auth/o/a$14;->a:J

    iget-wide v4, p0, Lcom/mobile/auth/o/a$14;->b:J

    iget v6, p0, Lcom/mobile/auth/o/a$14;->c:I

    invoke-virtual/range {v1 .. v6}, Lcom/nirvana/tools/logger/ACMLogger;->uploadLog(JJI)V
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
