.class Lcom/mobile/auth/e/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/i/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/e/f;->a(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:J

.field final synthetic c:Lcom/mobile/auth/e/g;

.field final synthetic d:Lcom/mobile/auth/e/f;


# direct methods
.method constructor <init>(Lcom/mobile/auth/e/f;Lcom/cmic/sso/sdk/a;JLcom/mobile/auth/e/g;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/e/f$b;->d:Lcom/mobile/auth/e/f;

    iput-object p2, p0, Lcom/mobile/auth/e/f$b;->a:Lcom/cmic/sso/sdk/a;

    iput-wide p3, p0, Lcom/mobile/auth/e/f$b;->b:J

    iput-object p5, p0, Lcom/mobile/auth/e/f$b;->c:Lcom/mobile/auth/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5e73\u53f0token \u300b\u300b\u300b\u300b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthBusiness"

    invoke-static {v1, v0}, Lcom/mobile/auth/k/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/e/f$b;->a:Lcom/cmic/sso/sdk/a;

    const-string v1, "interfacecode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/mobile/auth/e/f$b;->a:Lcom/cmic/sso/sdk/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "103000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phonescrip"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mobile/auth/e/f$b;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v4, v1, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/e/f$b;->d:Lcom/mobile/auth/e/f;

    iget-object v4, p0, Lcom/mobile/auth/e/f$b;->a:Lcom/cmic/sso/sdk/a;

    invoke-static {v1, p3, v3, v4}, Lcom/mobile/auth/e/f;->a(Lcom/mobile/auth/e/f;Lorg/json/JSONObject;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    const-string v1, "openId"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mobile/auth/e/f$b;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v4, v1, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mobile/auth/e/f$b;->b:J

    sub-long/2addr v3, v5

    iget-object v1, p0, Lcom/mobile/auth/e/f$b;->a:Lcom/cmic/sso/sdk/a;

    const-string v5, "interfaceelasped"

    invoke-virtual {v1, v5, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/e/f$b;->a:Lcom/cmic/sso/sdk/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/e/f$b;->c:Lcom/mobile/auth/e/g;

    iget-object v1, p0, Lcom/mobile/auth/e/f$b;->a:Lcom/cmic/sso/sdk/a;

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/mobile/auth/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return-void
.end method
