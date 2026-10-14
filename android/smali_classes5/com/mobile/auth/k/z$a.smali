.class Lcom/mobile/auth/k/z$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/k/z;->a(Lcom/mobile/auth/k/z$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/k/z$b;

.field final synthetic b:Lcom/mobile/auth/k/z;


# direct methods
.method constructor <init>(Lcom/mobile/auth/k/z;Lcom/mobile/auth/k/z$b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/k/z$a;->b:Lcom/mobile/auth/k/z;

    iput-object p2, p0, Lcom/mobile/auth/k/z$a;->a:Lcom/mobile/auth/k/z$b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/k/z$a;->b:Lcom/mobile/auth/k/z;

    invoke-static {v0, p1}, Lcom/mobile/auth/k/z;->a(Lcom/mobile/auth/k/z;Landroid/net/Network;)Landroid/net/Network;

    iget-object v0, p0, Lcom/mobile/auth/k/z$a;->a:Lcom/mobile/auth/k/z$b;

    invoke-interface {v0, p1}, Lcom/mobile/auth/k/z$b;->a(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/mobile/auth/k/z$a;->b:Lcom/mobile/auth/k/z;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mobile/auth/k/z;->a(Lcom/mobile/auth/k/z;Z)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object p1, p0, Lcom/mobile/auth/k/z$a;->b:Lcom/mobile/auth/k/z;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mobile/auth/k/z;->a(Lcom/mobile/auth/k/z;Z)Z

    return-void
.end method
