.class Lcn/mucang/android/core/config/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/config/v;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/misc/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/misc/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/config/v$b;->a:Lcn/mucang/android/core/misc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/db/a;->G()Lcn/mucang/android/core/config/db/a;

    move-result-object v0

    const-class v1, Lcn/mucang/android/core/config/db/RemoteConfigEntity;

    new-instance v2, Lcn/mucang/android/core/db/e;

    const-string v3, "select * from t_remote_config"

    invoke-direct {v2, v3}, Lcn/mucang/android/core/db/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/core/config/db/RemoteConfigEntity;

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/core/config/db/RemoteConfigEntity;->getRemoteKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcn/mucang/android/core/config/db/RemoteConfigEntity;->getRemoteKeyCount()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v2, Lcn/mucang/android/core/http/MucangNameValuePair;

    const-string v3, "countMap"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcn/mucang/android/core/config/s$b;->d()Lcn/mucang/android/core/config/s$b;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcn/mucang/android/core/config/s$b;->h(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Lcn/mucang/android/core/config/db/a;->G()Lcn/mucang/android/core/config/db/a;

    move-result-object v0

    const-string v1, "t_remote_config"

    const-string v2, "1=1"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/core/db/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcn/mucang/android/core/config/v$b;->a:Lcn/mucang/android/core/misc/a;

    invoke-virtual {v0}, Lcn/mucang/android/core/misc/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "UploadRemoteConfigManger"

    .line 12
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
