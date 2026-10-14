.class public Lcom/mobile/auth/k/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/k/d$b;
    }
.end annotation


# instance fields
.field private a:Landroid/net/Network;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/cmic/sso/sdk/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/mobile/auth/k/d;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/k/d;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/k/d;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/k/d;->a:Landroid/net/Network;

    return-object p1
.end method

.method private a(Lcom/mobile/auth/h/c;Lcom/cmic/sso/sdk/a;)V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mobile/auth/k/x;->a(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "operatorType"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/mobile/auth/k/x;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipv4_list"

    invoke-virtual {p2, v2, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ipv6_list"

    invoke-virtual {p2, v2, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mobile/auth/h/c;->b()Lcom/mobile/auth/h/c$a;

    move-result-object v2

    const-string v3, "isCloseIpv4"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/mobile/auth/h/c$a;->b(Ljava/lang/String;)V

    :cond_0
    const-string v1, "isCloseIpv6"

    invoke-virtual {p2, v1, v4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, Lcom/mobile/auth/h/c$a;->c(Ljava/lang/String;)V

    :cond_1
    const-string v0, "appkey"

    invoke-virtual {p2, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/mobile/auth/h/c$a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/mobile/auth/h/c$a;->u(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/mobile/auth/h/c;->a(Lcom/mobile/auth/h/c$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILcom/mobile/auth/k/d$b;Ljava/net/HttpURLConnection;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    const-string v2, "="

    const-string v3, "?"

    const-string v4, "200072"

    const-string v5, "200050"

    const-string v10, "\u53d6\u53f7\u63a5\u53e3\u5931\u8d25"

    const-string v11, "200039"

    const-string v6, "result"

    const-string v12, ";"

    const-string v13, "\u7f51\u7edc\u5f02\u5e38"

    const-string v14, "200028"

    const-string v15, "0"

    move-object/from16 v16, v13

    const-string v13, "interfacecode"

    const-string v1, "interfacetype"

    move-object/from16 v17, v10

    const-string v10, "HttpUtils"

    move-object/from16 v18, v11

    const-string v11, ""

    move-object/from16 v19, v1

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v1, 0xc8

    move-object/from16 v20, v2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http response code is not 200 ---"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v7, Lcom/mobile/auth/k/d;->d:I

    add-int/2addr v1, v2

    iput v1, v7, Lcom/mobile/auth/k/d;->d:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    iget-object v1, v7, Lcom/mobile/auth/k/d;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/mobile/auth/k/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "logReport"

    move-object/from16 v2, p7

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v2, p7

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p6

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/k/d$b;Landroid/net/Network;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v1, "\u8bf7\u6c42\u51fa\u9519"

    :try_start_1
    iget-object v2, v7, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    :goto_1
    invoke-interface {v9, v0, v1, v2}, Lcom/mobile/auth/k/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v0, v1, :cond_4

    const-string v0, "EOF\u5f02\u5e38"

    :try_start_2
    iget-object v1, v7, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    invoke-interface {v9, v5, v0, v1}, Lcom/mobile/auth/k/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v0, v1, :cond_5

    const-string v0, "ca\u6839\u8bc1\u4e66\u6821\u9a8c\u5931\u8d25"

    :try_start_3
    iget-object v1, v7, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    invoke-interface {v9, v4, v0, v1}, Lcom/mobile/auth/k/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    const-string v1, "102507"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    invoke-interface {v9, v0, v8, v1}, Lcom/mobile/auth/k/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v0, v16

    goto :goto_2

    :cond_7
    move-object v0, v8

    :goto_2
    iget-object v1, v7, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    invoke-interface {v9, v14, v0, v1}, Lcom/mobile/auth/k/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    iget-object v0, v7, Lcom/mobile/auth/k/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v0, :cond_a

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f02\u7f51\u53d6\u53f7\u7ed3\u679c = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/mobile/auth/k/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v7, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v4, v13, v11}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v13, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pplocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/mobile/auth/k/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/mobile/auth/k/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/mobile/auth/k/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {v1, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v7, Lcom/mobile/auth/k/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/mobile/auth/k/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/a;->a()Lcom/mobile/auth/f/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/f/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/unisdk/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/mobile/auth/k/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v7, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    move-object/from16 v3, v19

    invoke-virtual {v0, v3, v11}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v7, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "getNewTelecomPhoneNumberNotify;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/mobile/auth/k/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/mobile/auth/k/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "POST"

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/k/d$b;Landroid/net/Network;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    iget-object v0, v7, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    :try_start_5
    invoke-interface {v9, v1, v2, v0}, Lcom/mobile/auth/k/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    :goto_3
    :try_start_6
    sget-object v3, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    invoke-interface {v9, v1, v2, v0}, Lcom/mobile/auth/k/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    iget-object v0, v7, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    invoke-interface {v9, v8, v0}, Lcom/mobile/auth/k/d$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_b
    :goto_4
    move-object/from16 v3, v19

    iget-object v1, v7, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v1, v13, v11}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Location"

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location head ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v7, Lcom/mobile/auth/k/d;->e:Ljava/lang/String;

    if-nez v3, :cond_c

    const-string v3, "pplocation"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mobile/auth/k/d;->e:Ljava/lang/String;

    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v7, Lcom/mobile/auth/k/d;->e:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, v7, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v1, v2, v11}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const-string v3, "2"

    :try_start_7
    iget-object v4, v7, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    const-string v5, "operatorType"

    invoke-virtual {v4, v5, v15}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v7, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getUnicomMobile;"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v3, v2, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    iget-object v3, v7, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getTelecomMobile;"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :goto_6
    const-string v3, ""

    const-string v6, "POST"

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/k/d$b;Landroid/net/Network;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :cond_e
    const-string v0, "200021"

    const-string v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    :try_start_8
    iget-object v2, v7, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v8, v16

    :cond_f
    iget-object v0, v7, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    invoke-interface {v9, v14, v8, v0}, Lcom/mobile/auth/k/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mobile/auth/h/f;Lcom/mobile/auth/k/d$b;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mobile/auth/h/f;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/mobile/auth/k/d$b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "HttpUtils"

    const-string v1, "in  wifiNetwork"

    invoke-static {v0, v1}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mobile/auth/k/z;->a(Landroid/content/Context;)Lcom/mobile/auth/k/z;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "getPrePhonescrip"

    const-string v5, "\u6570\u636e\u7f51\u7edc\u5207\u6362\u5931\u8d25"

    const-string v6, "200024"

    const/4 v7, 0x0

    const/16 v8, 0x15

    if-lt v3, v8, :cond_3

    iput-object v1, p0, Lcom/mobile/auth/k/d;->a:Landroid/net/Network;

    new-instance v1, Lcom/mobile/auth/k/d$a;

    invoke-direct {v1, p0}, Lcom/mobile/auth/k/d$a;-><init>(Lcom/mobile/auth/k/d;)V

    invoke-virtual {v2, v1}, Lcom/mobile/auth/k/z;->a(Lcom/mobile/auth/k/z$b;)V

    :cond_0
    iget-object v1, p0, Lcom/mobile/auth/k/d;->a:Landroid/net/Network;

    if-nez v1, :cond_1

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    const-string v1, "waiting for newtwork"

    invoke-static {v0, v1}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3c

    if-le v7, v1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    invoke-interface {p3, v6, v5, p1}, Lcom/mobile/auth/k/d$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/mobile/auth/k/v;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/mobile/auth/h/c;

    iget-object v1, p0, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    invoke-direct {p0, v0, v1}, Lcom/mobile/auth/k/d;->a(Lcom/mobile/auth/h/c;Lcom/cmic/sso/sdk/a;)V

    :cond_2
    invoke-virtual {p2}, Lcom/mobile/auth/h/f;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/mobile/auth/k/d;->a:Landroid/net/Network;

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/k/d$b;Landroid/net/Network;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    sget-object v1, Lcom/mobile/auth/k/z;->a:Landroid/net/ConnectivityManager;

    const-string v2, "enableHIPRI"

    invoke-virtual {v1, v7, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    :goto_2
    const/16 v1, 0x1e

    const/4 v2, 0x5

    if-ge v7, v1, :cond_5

    :try_start_0
    sget-object v1, Lcom/mobile/auth/k/z;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object p2, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "check hipri failed"

    :goto_3
    invoke-static {v0, p1}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_4
    invoke-static {p1}, Lcom/mobile/auth/k/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/k/z;->a(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Lcom/mobile/auth/k/z;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5207\u6362\u6570\u636e\u7f51\u7edc\u7ed3\u679c >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    const-string v1, "\u5207\u6362\u7f51\u7edc\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/v;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/k/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lcom/mobile/auth/h/c;

    iget-object v1, p0, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    invoke-direct {p0, v0, v1}, Lcom/mobile/auth/k/d;->a(Lcom/mobile/auth/h/c;Lcom/cmic/sso/sdk/a;)V

    :cond_6
    invoke-virtual {p2}, Lcom/mobile/auth/h/f;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    goto/16 :goto_1

    :goto_5
    return-void

    :cond_7
    const-string p1, "\u5207\u6362\u7f51\u7edc\u5931\u8d25or\u65e0\u6570\u636e\u7f51\u7edc"

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/k/d$b;Landroid/net/Network;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    const-string v0, "GET"

    const-string v1, "POST"

    const-string v2, "UTF-8"

    const-string v3, "interfaceVersion"

    const-string v4, "Content-Type"

    const-string v5, "appid"

    const-string v6, "HttpUtils"

    iget-object v7, v10, Lcom/mobile/auth/k/d;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/mobile/auth/k/i;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "logReport"

    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "Config"

    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "try "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/mobile/auth/k/d;->d:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " http reqeust, url: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v14, v15, :cond_1

    if-eqz v12, :cond_1

    invoke-virtual {v12, v9}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    const-string v14, "is network null?\u4e0d\u4e3a\u7a7a"

    :goto_0
    invoke-static {v6, v14}, Lcom/mobile/auth/k/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    const-string v14, "is network null?\u4e3a\u7a7a"

    goto :goto_0

    :goto_1
    const-string v6, "https"

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v10, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    invoke-direct {v10, v9, v6, v11}, Lcom/mobile/auth/k/d;->a(Ljava/net/HttpURLConnection;Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    :cond_2
    const/16 v6, 0x3a98

    invoke-virtual {v9, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v6, 0x4a38

    invoke-virtual {v9, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v6, "traceId"

    :try_start_1
    iget-object v14, v10, Lcom/mobile/auth/k/d;->b:Ljava/lang/String;

    invoke-virtual {v9, v6, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v10, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v14, ""

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v6, v5, v14}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v10, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v5, v3, v14}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "sdkVersion"

    const-string v5, "quick_login_android_5.8.0"

    invoke-virtual {v9, v3, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v5, "application/json"

    invoke-virtual {v9, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "preGetMobile"

    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v9, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v4, "getPrePhonescrip"

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "getPrePhonescripForHttps"

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v4, "defendEOF"

    const-string v5, "1"

    invoke-virtual {v9, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v4, "Charset"

    invoke-virtual {v9, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v9, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v15, p2

    :try_start_3
    invoke-virtual {v15, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_7
    move-object/from16 v15, p2

    :try_start_4
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_8
    move-object v1, v7

    :goto_2
    :try_start_5
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v6, "utf-8"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_a

    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_a
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6

    :goto_5
    sget-object v1, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v4, p3

    move-object v5, v9

    move-object/from16 v6, p4

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;ILcom/mobile/auth/k/d$b;Ljava/net/HttpURLConnection;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v7, v1

    move-object v14, v2

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v16, v1

    move-object v14, v2

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v14, v7

    move-object v7, v1

    :goto_7
    move-object v1, v0

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object/from16 v16, v1

    move-object v14, v7

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v14, v7

    goto/16 :goto_10

    :catch_4
    move-exception v0

    move-object/from16 v15, p2

    :goto_8
    move-object v14, v7

    move-object/from16 v16, v14

    :goto_9
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_b

    iget-object v1, v10, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    const-string v2, "is_need_to_get_cert"

    invoke-virtual {v1, v2, v8}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const-string v1, "200072"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;ILcom/mobile/auth/k/d$b;Ljava/net/HttpURLConnection;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_e

    const/4 v2, 0x0

    const-string v0, "200050"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;ILcom/mobile/auth/k/d$b;Ljava/net/HttpURLConnection;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v16, :cond_c

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_b

    :cond_c
    :goto_a
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_c

    :goto_b
    sget-object v1, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_c
    return-void

    :cond_e
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    :try_start_a
    invoke-direct/range {v1 .. v9}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;ILcom/mobile/auth/k/d$b;Ljava/net/HttpURLConnection;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v16, :cond_f

    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_e

    :cond_f
    :goto_d
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_f

    :goto_e
    sget-object v1, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_f
    return-void

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v7, v16

    :goto_10
    if-eqz v7, :cond_11

    :try_start_c
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_12

    :cond_11
    :goto_11
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_13

    :goto_12
    sget-object v2, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_13
    throw v1
.end method

.method private a(Ljava/net/HttpURLConnection;Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "CLOSE_CERT_VERIFY"

    invoke-virtual {p2, v1, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "uniConfig"

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "logReport"

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "HttpUtils"

    const-string p3, "\u5f00\u542f\u8bc1\u4e66\u6821\u9a8c"

    invoke-static {p2, p3}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    invoke-virtual {p3}, Lcom/cmic/sso/sdk/a;->a()Lcom/mobile/auth/f/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mobile/auth/f/a;->a()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    new-instance p2, Lcom/cmic/sso/sdk/c;

    invoke-direct {p2, p3}, Lcom/cmic/sso/sdk/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/c;->a()Ljavax/net/ssl/SSLContext;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mobile/auth/h/f;ZLcom/mobile/auth/k/d$b;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mobile/auth/h/f;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z",
            "Lcom/mobile/auth/k/d$b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cmic/sso/sdk/a;",
            ")V"
        }
    .end annotation

    iput-object p7, p0, Lcom/mobile/auth/k/d;->f:Lcom/cmic/sso/sdk/a;

    iput-object p6, p0, Lcom/mobile/auth/k/d;->b:Ljava/lang/String;

    invoke-static {p6}, Lcom/mobile/auth/k/i;->a(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_0

    const-string p6, "logReport"

    invoke-virtual {p1, p6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_0

    const-string p6, "Config"

    invoke-virtual {p1, p6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_0

    return-void

    :cond_0
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4f7f\u7528wifi\u4e0b\u53d6\u53f7\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f\uff1f"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v0, "HttpUtils"

    invoke-static {v0, p6}, Lcom/mobile/auth/k/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;Lcom/mobile/auth/h/f;Lcom/mobile/auth/k/d$b;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p3, "getPrePhonescrip"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    move-object p3, p2

    check-cast p3, Lcom/mobile/auth/h/c;

    invoke-direct {p0, p3, p7}, Lcom/mobile/auth/k/d;->a(Lcom/mobile/auth/h/c;Lcom/cmic/sso/sdk/a;)V

    :cond_2
    invoke-virtual {p2}, Lcom/mobile/auth/h/f;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/k/d$b;Landroid/net/Network;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
