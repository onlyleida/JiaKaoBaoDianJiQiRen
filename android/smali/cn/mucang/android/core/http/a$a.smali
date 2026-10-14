.class Lcn/mucang/android/core/http/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/http/a;-><init>(Lcn/mucang/android/core/http/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/http/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/http/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/http/a$a;->a:Lcn/mucang/android/core/http/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const-string v2, "https"

    const-string v3, "http"

    const-string v4, "Location"

    const/16 v5, 0x133

    const/4 v6, 0x0

    if-ne v1, v5, :cond_5

    .line 3
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    const-string v8, "POST"

    .line 4
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5
    invoke-virtual {v0, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v6

    :cond_0
    const-string v1, "http://"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 9
    :goto_1
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v6

    .line 10
    :cond_3
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcn/mucang/android/core/http/a$a;->a:Lcn/mucang/android/core/http/a;

    invoke-static {v0}, Lcn/mucang/android/core/http/a;->b(Lcn/mucang/android/core/http/a;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v0

    if-nez v0, :cond_4

    return-object v6

    .line 12
    :cond_4
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcn/mucang/android/core/http/a$a;->a:Lcn/mucang/android/core/http/a;

    invoke-static {v0}, Lcn/mucang/android/core/http/a;->b(Lcn/mucang/android/core/http/a;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 16
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 18
    iget-object v0, p0, Lcn/mucang/android/core/http/a$a;->a:Lcn/mucang/android/core/http/a;

    invoke-static {v0, p1}, Lcn/mucang/android/core/http/a;->a(Lcn/mucang/android/core/http/a;Ljava/lang/Exception;)V

    .line 19
    throw p1

    :cond_5
    if-eq v1, v5, :cond_7

    const/16 p1, 0x134

    if-eq v1, p1, :cond_7

    const/16 p1, 0x12c

    if-eq v1, p1, :cond_7

    const/16 p1, 0x12d

    if-eq v1, p1, :cond_7

    const/16 p1, 0x12e

    if-eq v1, p1, :cond_7

    const/16 p1, 0x12f

    if-eq v1, p1, :cond_7

    const/16 p1, 0x130

    if-ne v1, p1, :cond_6

    goto :goto_2

    :cond_6
    return-object v0

    .line 20
    :cond_7
    :goto_2
    invoke-virtual {v0, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    const/4 v1, 0x0

    .line 21
    invoke-static {p1, v1}, Lf/a/a/a/i/h;->f(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    return-object v6

    .line 22
    :cond_9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    .line 25
    :cond_a
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 26
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 27
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt p1, v4, :cond_b

    const/high16 v1, 0x20000

    .line 29
    :cond_b
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 31
    new-instance p1, Lcn/mucang/android/core/http/a$a$a;

    invoke-direct {p1, p0, v3}, Lcn/mucang/android/core/http/a$a$a;-><init>(Lcn/mucang/android/core/http/a$a;Landroid/content/Intent;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-object v6

    :cond_c
    :goto_3
    return-object v0
.end method
