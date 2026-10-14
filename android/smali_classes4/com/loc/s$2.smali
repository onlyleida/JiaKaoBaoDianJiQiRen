.class final Lcom/loc/s$2;
.super Lcom/loc/cj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;JLorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/s$2;->a:Landroid/content/Context;

    iput-wide p2, p0, Lcom/loc/s$2;->b:J

    iput-object p4, p0, Lcom/loc/s$2;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/loc/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/loc/s$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/s;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/s$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/s$2;->c:Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/loc/s$2;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/loc/s;->a(Landroid/content/Context;Lorg/json/JSONObject;J)V

    iget-object v0, p0, Lcom/loc/s$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/s$2;->c:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/loc/s;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/s$2;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/loc/s$2;->b:J

    invoke-static {v1, v2}, Lcom/loc/s;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/s$2;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/loc/s$2;->b:J

    invoke-static {v1, v2}, Lcom/loc/s;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/s;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
