.class public Lcom/mobile/auth/h/d;
.super Lcom/mobile/auth/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/h/d$a;,
        Lcom/mobile/auth/h/d$b;
    }
.end annotation


# instance fields
.field private a:Lcom/mobile/auth/h/d$b;

.field private b:Lcom/mobile/auth/h/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mobile/auth/h/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "sign"

    :try_start_0
    iget-object v4, p0, Lcom/mobile/auth/h/d;->a:Lcom/mobile/auth/h/d$b;

    invoke-virtual {v4}, Lcom/mobile/auth/h/d$b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "msgid"

    :try_start_1
    iget-object v4, p0, Lcom/mobile/auth/h/d;->a:Lcom/mobile/auth/h/d$b;

    invoke-virtual {v4}, Lcom/mobile/auth/h/d$b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "systemtime"

    :try_start_2
    iget-object v4, p0, Lcom/mobile/auth/h/d;->a:Lcom/mobile/auth/h/d$b;

    invoke-virtual {v4}, Lcom/mobile/auth/h/d$b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "appid"

    :try_start_3
    iget-object v4, p0, Lcom/mobile/auth/h/d;->a:Lcom/mobile/auth/h/d$b;

    invoke-virtual {v4}, Lcom/mobile/auth/h/d$b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "version"

    :try_start_4
    iget-object v4, p0, Lcom/mobile/auth/h/d;->a:Lcom/mobile/auth/h/d$b;

    invoke-virtual {v4}, Lcom/mobile/auth/h/d$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "header"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "log"

    :try_start_5
    iget-object v3, p0, Lcom/mobile/auth/h/d;->b:Lcom/mobile/auth/h/d$a;

    invoke-virtual {v3}, Lcom/mobile/auth/h/d$a;->a()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public a(Lcom/mobile/auth/h/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/d;->b:Lcom/mobile/auth/h/d$a;

    return-void
.end method

.method public a(Lcom/mobile/auth/h/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/h/d;->a:Lcom/mobile/auth/h/d$b;

    return-void
.end method
