.class final Lcom/loc/fb$1;
.super Lcom/loc/cj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/fb;->b(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/loc/fb;


# direct methods
.method constructor <init>(Lcom/loc/fb;I)V
    .locals 0

    iput-object p1, p0, Lcom/loc/fb$1;->b:Lcom/loc/fb;

    iput p2, p0, Lcom/loc/fb$1;->a:I

    invoke-direct {p0}, Lcom/loc/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const-string v0, "ttl"

    const-string v1, "ipsv6"

    const-string v2, "ips"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/fh;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?host=dualstack-a.apilocate.amap.com&query="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/loc/fb$1;->a:I

    sget v5, Lcom/loc/fb;->b:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/loc/fc;

    invoke-direct {v4}, Lcom/loc/fc;-><init>()V

    invoke-virtual {v4, v3}, Lcom/loc/fc;->b(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/loc/fc;->c(Ljava/lang/String;)V

    sget-object v3, Lcom/loc/bk$a;->e:Lcom/loc/bk$a;

    invoke-virtual {v4, v3}, Lcom/loc/bk;->a(Lcom/loc/bk$a;)V

    sget-object v3, Lcom/loc/bk$c;->a:Lcom/loc/bk$c;

    invoke-virtual {v4, v3}, Lcom/loc/bk;->a(Lcom/loc/bk$c;)V

    :try_start_0
    invoke-static {}, Lcom/loc/bf;->a()Lcom/loc/bf;

    invoke-static {v4}, Lcom/loc/bf;->a(Lcom/loc/bk;)Lcom/loc/bl;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    iget-object v3, v3, Lcom/loc/bl;->a:[B

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    sget v5, Lcom/loc/fb;->a:I

    invoke-static {v4, v5}, Lcom/loc/fb;->a(Lorg/json/JSONArray;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/loc/fb$1;->b:Lcom/loc/fb;

    sget v6, Lcom/loc/fb;->a:I

    invoke-static {v5, v6}, Lcom/loc/fb;->a(Lcom/loc/fb;I)Lcom/loc/ek;

    move-result-object v5

    invoke-virtual {v5}, Lcom/loc/ek;->a()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/loc/fb;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/loc/fb$1;->b:Lcom/loc/fb;

    sget v6, Lcom/loc/fb;->a:I

    invoke-static {v5, v6}, Lcom/loc/fb;->a(Lcom/loc/fb;I)Lcom/loc/ek;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/loc/ek;->a([Ljava/lang/String;)V

    iget-object v4, p0, Lcom/loc/fb$1;->b:Lcom/loc/fb;

    sget v5, Lcom/loc/fb;->a:I

    invoke-static {v4, v5}, Lcom/loc/fb;->b(Lcom/loc/fb;I)V

    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    sget v5, Lcom/loc/fb;->b:I

    invoke-static {v4, v5}, Lcom/loc/fb;->a(Lorg/json/JSONArray;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/loc/fb$1;->b:Lcom/loc/fb;

    sget v6, Lcom/loc/fb;->b:I

    invoke-static {v5, v6}, Lcom/loc/fb;->a(Lcom/loc/fb;I)Lcom/loc/ek;

    move-result-object v5

    invoke-virtual {v5}, Lcom/loc/ek;->a()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/loc/fb;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/loc/fb$1;->b:Lcom/loc/fb;

    sget v6, Lcom/loc/fb;->b:I

    invoke-static {v5, v6}, Lcom/loc/fb;->a(Lcom/loc/fb;I)Lcom/loc/ek;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/loc/ek;->a([Ljava/lang/String;)V

    iget-object v4, p0, Lcom/loc/fb$1;->b:Lcom/loc/fb;

    sget v5, Lcom/loc/fb;->b:I

    invoke-static {v4, v5}, Lcom/loc/fb;->b(Lcom/loc/fb;I)V

    :cond_2
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_4

    iget-object v1, p0, Lcom/loc/fb$1;->b:Lcom/loc/fb;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/loc/fb;->a(Lcom/loc/fb;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "key"

    const-string v3, "dnsError"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reason"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object v0, p0, Lcom/loc/fb$1;->b:Lcom/loc/fb;

    invoke-static {v0}, Lcom/loc/fb;->a(Lcom/loc/fb;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "O018"

    invoke-static {v0, v2, v1}, Lcom/loc/fn;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
