.class public Lcom/mobile/auth/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/f/b$c;
    }
.end annotation


# static fields
.field private static a:Lcom/mobile/auth/f/b;


# instance fields
.field private b:Lcom/mobile/auth/f/a;

.field private c:Lcom/mobile/auth/f/a;

.field private volatile d:Z

.field private e:Lcom/mobile/auth/f/b$c;


# direct methods
.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/f/b;->d:Z

    new-instance v0, Lcom/mobile/auth/f/a$b;

    invoke-direct {v0}, Lcom/mobile/auth/f/a$b;-><init>()V

    invoke-virtual {v0}, Lcom/mobile/auth/f/a$b;->a()Lcom/mobile/auth/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/f/b;->d()Lcom/mobile/auth/f/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/f/b;->b:Lcom/mobile/auth/f/a;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/mobile/auth/f/b;->b:Lcom/mobile/auth/f/a;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/f/b;)Lcom/mobile/auth/f/a;
    .locals 0

    invoke-direct {p0}, Lcom/mobile/auth/f/b;->d()Lcom/mobile/auth/f/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/mobile/auth/f/b;Lcom/mobile/auth/f/a;)Lcom/mobile/auth/f/a;
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/f/b;->b:Lcom/mobile/auth/f/a;

    return-object p1
.end method

.method public static a(Z)Lcom/mobile/auth/f/b;
    .locals 2

    sget-object v0, Lcom/mobile/auth/f/b;->a:Lcom/mobile/auth/f/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/f/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/f/b;->a:Lcom/mobile/auth/f/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/f/b;

    invoke-direct {v1, p0}, Lcom/mobile/auth/f/b;-><init>(Z)V

    sput-object v1, Lcom/mobile/auth/f/b;->a:Lcom/mobile/auth/f/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/f/b;->a:Lcom/mobile/auth/f/b;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method static synthetic a(Lcom/mobile/auth/f/b;Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mobile/auth/f/b;->b(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/f/b;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobile/auth/f/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ":"

    const-string v3, "HOST_CERT_INFO"

    const-string v4, "M009"

    const-string v5, "M008"

    const-string v6, "M007"

    const-string v7, "M005"

    const-string v8, "CHANGE_HOST"

    const-string v9, "Configlist"

    const-string v10, "client_valid"

    const-string v11, "UmcConfigHandle"

    const-string v12, "0"

    const-string v13, "sso_config_xf"

    invoke-static {v13}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    :try_start_0
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v14, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3c

    mul-long v14, v14, v18

    mul-long v14, v14, v18

    const-wide/16 v18, 0x3e8

    mul-long v14, v14, v18

    add-long v14, v16, v14

    invoke-interface {v13, v10, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v10, "configHost"

    const-string v14, "https_get_phone_scrip_host"

    const-string v15, "logHost"

    move-object/from16 v16, v12

    const-string v12, "&"

    move-object/from16 v17, v2

    const-string v2, "httpsHost"

    move-object/from16 v18, v3

    const-string v3, "httpHost"

    move-object/from16 p1, v10

    const-string v10, ","

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-eqz v9, :cond_b

    :try_start_1
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v12

    array-length v12, v9

    move-object/from16 v23, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v12, :cond_2

    move/from16 v24, v12

    aget-object v12, v9, v0

    invoke-virtual {v12, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    move-object v9, v12

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move/from16 v12, v24

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "="

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTTP:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "||||||||HTTPS:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_3
    const-string v0, "https"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "HTTPS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "http"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "HTTP"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    invoke-virtual {v9, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_7
    move-object/from16 v23, v0

    move-object/from16 v22, v12

    :cond_8
    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {v1, v8, v6}, Lcom/mobile/auth/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v13, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_9
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v1, v8, v5}, Lcom/mobile/auth/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v13, v14, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_a
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {v1, v8, v4}, Lcom/mobile/auth/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v4, p1

    invoke-interface {v13, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    :cond_b
    move-object/from16 v4, p1

    move-object/from16 v23, v0

    move-object/from16 v22, v12

    invoke-interface {v13, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_c
    :goto_4
    move-object/from16 v2, v18

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, v20

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    aget-object v4, v2, v20

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    aget-object v4, v2, v20

    aget-object v6, v2, v20

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-object v2, v2, v20

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CERT_INFO"

    invoke-interface {v13, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_d
    move-object/from16 v3, v22

    :cond_e
    :goto_5
    const-string v2, "CLOSE_CERT_VERIFY"

    move-object/from16 v4, v16

    invoke-direct {v1, v0, v2, v4, v13}, Lcom/mobile/auth/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v2, "CLOSE_FRIEND_WAPKS"

    invoke-direct {v1, v0, v2, v4, v13}, Lcom/mobile/auth/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v2, "CLOSE_LOGS_VERSION"

    invoke-direct {v1, v0, v2, v4, v13}, Lcom/mobile/auth/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v2, "CLOSE_IPV4_LIST"

    invoke-direct {v1, v0, v2, v4, v13}, Lcom/mobile/auth/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v2, "CLOSE_IPV6_LIST"

    const-string v5, "1"

    invoke-direct {v1, v0, v2, v5, v13}, Lcom/mobile/auth/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v2, "CLOSE_M005_SDKVERSION_LIST"

    invoke-direct {v1, v0, v2, v4, v13}, Lcom/mobile/auth/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v2, "CLOSE_M005_APPID_LIST"

    invoke-direct {v1, v0, v2, v4, v13}, Lcom/mobile/auth/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v2, "CLOSE_M008_APPID_LIST"

    invoke-direct {v1, v0, v2, v4, v13}, Lcom/mobile/auth/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v2, "CLOSE_M008_SDKVERSION_LIST"

    invoke-direct {v1, v0, v2, v4, v13}, Lcom/mobile/auth/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v2, "WAPKS_HTTPS"

    invoke-direct {v1, v0, v2, v4, v13}, Lcom/mobile/auth/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v2, "LOGS_CONTROL"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "LOGS_CONTROL"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "h"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    aget-object v2, v0, v20

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    aget-object v2, v0, v19

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v2, :cond_10

    :try_start_3
    aget-object v2, v0, v20

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v19

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "maxFailedLogTimes"

    invoke-interface {v13, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pauseTime"

    invoke-interface {v13, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    :try_start_4
    const-string v0, "\u89e3\u6790\u65e5\u5fd7\u4e0a\u62a5\u9650\u5236\u65f6\u95f4\u6b21\u6570\u5f02\u5e38"

    invoke-static {v11, v0}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    const-string v0, "maxFailedLogTimes"

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pauseTime"

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_10
    :goto_6
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    const-string v2, "\u914d\u7f6e\u9879\u5f02\u5e38\uff0c\u914d\u7f6e\u5931\u6548"

    invoke-static {v11, v2}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE_FRIEND_WAPKS"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-interface {p4, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/f/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mobile/auth/f/b;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/mobile/auth/f/b;)Lcom/mobile/auth/f/b$c;
    .locals 0

    iget-object p0, p0, Lcom/mobile/auth/f/b;->e:Lcom/mobile/auth/f/b$c;

    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .locals 4

    iget-boolean v0, p0, Lcom/mobile/auth/f/b;->d:Z

    const-string v1, "UmcConfigHandle"

    if-eqz v0, :cond_0

    const-string p1, "\u6b63\u5728\u83b7\u53d6\u914d\u7f6e\u4e2d..."

    invoke-static {v1, p1}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobile/auth/f/b;->d:Z

    iget-object v2, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v2}, Lcom/mobile/auth/f/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mobile/auth/f/b;->b:Lcom/mobile/auth/f/a;

    invoke-virtual {v2}, Lcom/mobile/auth/f/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const-string v2, "is_need_to_get_cert"

    invoke-virtual {p2, v2, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpsDefaultCert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v3}, Lcom/mobile/auth/f/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpsLocalCert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mobile/auth/f/b;->b:Lcom/mobile/auth/f/a;

    invoke-virtual {v3}, Lcom/mobile/auth/f/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mobile/auth/i/a;->a(Landroid/content/Context;)Lcom/mobile/auth/i/a;

    move-result-object p1

    new-instance v1, Lcom/mobile/auth/f/b$a;

    invoke-direct {v1, p0}, Lcom/mobile/auth/f/b$a;-><init>(Lcom/mobile/auth/f/b;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/mobile/auth/i/a;->a(ZLcom/cmic/sso/sdk/a;Lcom/mobile/auth/i/b;)V

    return-void
.end method

.method static synthetic c(Lcom/mobile/auth/f/b;)Lcom/mobile/auth/f/a;
    .locals 0

    iget-object p0, p0, Lcom/mobile/auth/f/b;->b:Lcom/mobile/auth/f/a;

    return-object p0
.end method

.method private d()Lcom/mobile/auth/f/a;
    .locals 2

    new-instance v0, Lcom/mobile/auth/f/a$b;

    invoke-direct {v0}, Lcom/mobile/auth/f/a$b;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->a(Ljava/lang/String;)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->b(Ljava/lang/String;)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->e(Ljava/lang/String;)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->c(Ljava/lang/String;)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->f(Ljava/lang/String;)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->d(Ljava/lang/String;)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->l()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->a(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->f(Z)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->m()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->b(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->g(Z)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->h()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->h(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->b(Z)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->i()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->g(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->c(Z)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->g()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->f(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->a(Z)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->j()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->c(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->d(Z)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->k()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->d(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->e(Z)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->n()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->e(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->h(Z)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->o()Z

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->i(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->i(Z)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->p()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->a(I)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->q()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/f/d;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/f/a$b;->b(I)Lcom/mobile/auth/f/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/f/a$b;->a()Lcom/mobile/auth/f/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Lcom/mobile/auth/f/a;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/f/b;->c:Lcom/mobile/auth/f/a;

    return-object v0
.end method

.method a(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .locals 2

    invoke-static {}, Lcom/mobile/auth/f/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "downLoadConfig"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "is_need_to_get_cert"

    invoke-virtual {p2, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/mobile/auth/f/b$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobile/auth/f/b$b;-><init>(Lcom/mobile/auth/f/b;Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    invoke-static {v0}, Lcom/mobile/auth/k/u;->a(Lcom/mobile/auth/k/u$a;)V

    :cond_1
    return-void
.end method

.method a(Lcom/mobile/auth/f/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/f/b;->e:Lcom/mobile/auth/f/b$c;

    return-void
.end method

.method b()Lcom/mobile/auth/f/a;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/f/b;->b:Lcom/mobile/auth/f/a;

    return-object v0
.end method

.method c()V
    .locals 1

    const-string v0, "sso_config_xf"

    invoke-static {v0}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
