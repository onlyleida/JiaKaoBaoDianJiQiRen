.class final Lcom/mobile/auth/k/l$a;
.super Lcom/mobile/auth/k/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/k/l;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/k/l$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobile/auth/k/l$a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mobile/auth/k/l$a;->c:J

    iput-object p5, p0, Lcom/mobile/auth/k/l$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mobile/auth/k/u$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    const-string v0, "PhoneScripUtils"

    const-string v1, "start save scrip to sp in sub thread"

    invoke-static {v0, v1}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/k/l$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobile/auth/k/l$a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mobile/auth/k/l$a;->c:J

    iget-object v4, p0, Lcom/mobile/auth/k/l$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mobile/auth/k/l;->b(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
