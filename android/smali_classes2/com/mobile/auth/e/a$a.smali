.class Lcom/mobile/auth/e/a$a;
.super Lcom/mobile/auth/k/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/e/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/e/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/e/a$a;->a:Lcom/mobile/auth/e/a;

    invoke-direct {p0}, Lcom/mobile/auth/k/u$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const-string v0, "AID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthnHelper"

    invoke-static {v2, v1}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/e/a$a;->a:Lcom/mobile/auth/e/a;

    invoke-static {v0}, Lcom/mobile/auth/e/a;->a(Lcom/mobile/auth/e/a;)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/e/a$a;->a:Lcom/mobile/auth/e/a;

    invoke-static {v0}, Lcom/mobile/auth/e/a;->b(Lcom/mobile/auth/e/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/k/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u751f\u6210androidkeystore\u6210\u529f"

    goto :goto_0

    :cond_1
    const-string v0, "\u751f\u6210androidkeystore\u5931\u8d25"

    :goto_0
    invoke-static {v2, v0}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
