.class Lcom/mobile/auth/k/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/k/z$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/k/d;->a(Ljava/lang/String;Lcom/mobile/auth/h/f;Lcom/mobile/auth/k/d$b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/k/d;


# direct methods
.method constructor <init>(Lcom/mobile/auth/k/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/k/d$a;->a:Lcom/mobile/auth/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/k/d$a;->a:Lcom/mobile/auth/k/d;

    invoke-static {v0, p1}, Lcom/mobile/auth/k/d;->a(Lcom/mobile/auth/k/d;Landroid/net/Network;)Landroid/net/Network;

    const-string p1, "HttpUtils"

    const-string v0, "onAvailable"

    invoke-static {p1, v0}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
