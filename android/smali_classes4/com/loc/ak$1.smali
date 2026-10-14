.class final Lcom/loc/ak$1;
.super Lcom/loc/cj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/ak;->a(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/loc/ak$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/loc/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ak$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/an;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/ak$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/an;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/ak$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/an;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/ak$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/br;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/ak$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bp;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Lg"

    const-string v2, "proL"

    invoke-static {v0, v1, v2}, Lcom/loc/am;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    return-void
.end method
