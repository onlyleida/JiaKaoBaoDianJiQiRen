.class final Lcom/loc/n$1;
.super Lcom/loc/cj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/n;->a(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/n$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/loc/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/loc/n;->g:Lcom/loc/n$a;

    invoke-interface {v1}, Lcom/loc/n$a;->b()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/loc/n;->g:Lcom/loc/n$a;

    iget-object v3, p0, Lcom/loc/n$1;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/n$1;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/loc/n;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v0, v0, v4}, Lcom/loc/n$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/loc/bf;->a()Lcom/loc/bf;

    sget-object v2, Lcom/loc/n;->g:Lcom/loc/n$a;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/loc/n$a;->a([BLjava/util/Map;)Lcom/loc/bk;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bf;->a(Lcom/loc/bk;)Lcom/loc/bl;

    move-result-object v0

    sget-object v1, Lcom/loc/n;->g:Lcom/loc/n$a;

    iget-object v2, p0, Lcom/loc/n$1;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/String;

    iget-object v0, v0, Lcom/loc/bl;->a:[B

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2, v3}, Lcom/loc/n$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sput-object v0, Lcom/loc/n;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
