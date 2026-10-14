.class Lcom/mobile/auth/f/b$b;
.super Lcom/mobile/auth/k/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/f/b;->a(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cmic/sso/sdk/a;

.field final synthetic c:Lcom/mobile/auth/f/b;


# direct methods
.method constructor <init>(Lcom/mobile/auth/f/b;Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/f/b$b;->c:Lcom/mobile/auth/f/b;

    iput-object p2, p0, Lcom/mobile/auth/f/b$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobile/auth/f/b$b;->b:Lcom/cmic/sso/sdk/a;

    invoke-direct {p0}, Lcom/mobile/auth/k/u$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const-string v0, "UmcConfigHandle"

    const-string v1, "\u5f00\u59cb\u62c9\u53d6\u914d\u7f6e.."

    invoke-static {v0, v1}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/f/b$b;->c:Lcom/mobile/auth/f/b;

    iget-object v1, p0, Lcom/mobile/auth/f/b$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/f/b$b;->b:Lcom/cmic/sso/sdk/a;

    invoke-static {v0, v1, v2}, Lcom/mobile/auth/f/b;->a(Lcom/mobile/auth/f/b;Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method
