.class public Lcom/mobile/auth/gatewayauth/model/ConfigRule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private auth_token:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

.field private get_config:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

.field private get_vendor_list:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

.field private is_auth_demoted:Ljava/lang/String;

.field private is_crash_demoted:Ljava/lang/String;

.field private is_demoted:Ljava/lang/String;

.field private is_login_demoted:Ljava/lang/String;

.field private is_sls_demoted:Ljava/lang/String;

.field private login_page:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

.field private login_phone:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

.field private login_token:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

.field private sls:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

.field private upload_log:Lcom/mobile/auth/gatewayauth/model/UploadLog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->fromJson(Lorg/json/JSONObject;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-direct {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;-><init>()V

    if-eqz p0, :cond_0

    invoke-static {p0, v1, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    const-string v2, "auth_token"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/mobile/auth/gatewayauth/model/ConfigRule$1;

    invoke-direct {v3}, Lcom/mobile/auth/gatewayauth/model/ConfigRule$1;-><init>()V

    invoke-static {v2, v3, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->setAuth_token(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V

    const-string v2, "get_config"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/mobile/auth/gatewayauth/model/ConfigRule$2;

    invoke-direct {v3}, Lcom/mobile/auth/gatewayauth/model/ConfigRule$2;-><init>()V

    invoke-static {v2, v3, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->setGet_config(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V

    const-string v2, "get_vendor_list"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/mobile/auth/gatewayauth/model/ConfigRule$3;

    invoke-direct {v3}, Lcom/mobile/auth/gatewayauth/model/ConfigRule$3;-><init>()V

    invoke-static {v2, v3, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->setGet_vendor_list(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V

    const-string v2, "login_page"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/mobile/auth/gatewayauth/model/ConfigRule$4;

    invoke-direct {v3}, Lcom/mobile/auth/gatewayauth/model/ConfigRule$4;-><init>()V

    invoke-static {v2, v3, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->setLogin_page(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V

    const-string v2, "login_phone"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/mobile/auth/gatewayauth/model/ConfigRule$5;

    invoke-direct {v3}, Lcom/mobile/auth/gatewayauth/model/ConfigRule$5;-><init>()V

    invoke-static {v2, v3, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->setLogin_phone(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V

    const-string v2, "login_token"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/mobile/auth/gatewayauth/model/ConfigRule$6;

    invoke-direct {v3}, Lcom/mobile/auth/gatewayauth/model/ConfigRule$6;-><init>()V

    invoke-static {v2, v3, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->setLogin_token(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V

    const-string v2, "sls"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/mobile/auth/gatewayauth/model/ConfigRule$7;

    invoke-direct {v3}, Lcom/mobile/auth/gatewayauth/model/ConfigRule$7;-><init>()V

    invoke-static {v2, v3, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->setSls(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V

    const-string v2, "upload_log"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v2, Lcom/mobile/auth/gatewayauth/model/ConfigRule$8;

    invoke-direct {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule$8;-><init>()V

    invoke-static {p0, v2, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobile/auth/gatewayauth/model/UploadLog;

    invoke-virtual {v1, p0}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->setUpload_log(Lcom/mobile/auth/gatewayauth/model/UploadLog;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getAuth_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->auth_token:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getGet_config()Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->get_config:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getGet_vendor_list()Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->get_vendor_list:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getIs_auth_demoted()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_auth_demoted:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getIs_crash_demoted()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_crash_demoted:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getIs_demoted()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_demoted:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getIs_login_demoted()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_login_demoted:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getIs_sls_demoted()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_sls_demoted:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getLogin_page()Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_page:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getLogin_phone()Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_phone:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getLogin_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_token:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->sls:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getUpload_log()Lcom/mobile/auth/gatewayauth/model/UploadLog;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->upload_log:Lcom/mobile/auth/gatewayauth/model/UploadLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public setAuth_token(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->auth_token:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setGet_config(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->get_config:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setGet_vendor_list(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->get_vendor_list:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setIs_auth_demoted(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_auth_demoted:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setIs_crash_demoted(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_crash_demoted:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setIs_demoted(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_demoted:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setIs_login_demoted(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_login_demoted:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setIs_sls_demoted(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_sls_demoted:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public setLogin_page(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_page:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setLogin_phone(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_phone:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setLogin_token(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_token:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setSls(Lcom/mobile/auth/gatewayauth/model/LimitConfig;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->sls:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setUpload_log(Lcom/mobile/auth/gatewayauth/model/UploadLog;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->upload_log:Lcom/mobile/auth/gatewayauth/model/UploadLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->toJson(Ljava/lang/Object;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "auth_token"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->auth_token:Lcom/mobile/auth/gatewayauth/model/LimitConfig;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "get_config"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->get_config:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "get_vendor_list"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->get_vendor_list:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "login_page"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_page:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "login_phone"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_phone:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "login_token"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_token:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    if-nez v2, :cond_5

    move-object v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    :goto_5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sls"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->sls:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    if-nez v2, :cond_6

    move-object v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    :goto_6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "upload_log"

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->upload_log:Lcom/mobile/auth/gatewayauth/model/UploadLog;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/UploadLog;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    :goto_7
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigRule{auth_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->auth_token:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", get_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->get_config:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", get_vendor_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->get_vendor_list:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is_auth_demoted=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_auth_demoted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_demoted=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_demoted:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_login_demoted=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_login_demoted:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_sls_demoted=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_sls_demoted:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_crash_demoted=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->is_crash_demoted:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", login_page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_page:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", login_phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_phone:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", login_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->login_token:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->sls:Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upload_log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->upload_log:Lcom/mobile/auth/gatewayauth/model/UploadLog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method
