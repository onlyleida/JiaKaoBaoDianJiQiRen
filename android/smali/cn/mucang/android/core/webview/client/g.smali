.class public Lcn/mucang/android/core/webview/client/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/webview/client/g$c;,
        Lcn/mucang/android/core/webview/client/g$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcn/mucang/android/core/webview/client/g$c;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/core/webview/client/g$c;

.field private c:Lcn/mucang/android/core/webview/client/g$c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/client/g;->a:Ljava/util/Map;

    .line 4
    sget-object v0, Lcn/mucang/android/core/webview/client/b;->a:Lcn/mucang/android/core/webview/client/b;

    iput-object v0, p0, Lcn/mucang/android/core/webview/client/g;->b:Lcn/mucang/android/core/webview/client/g$c;

    .line 5
    sget-object v0, Lcn/mucang/android/core/webview/client/c;->a:Lcn/mucang/android/core/webview/client/c;

    iput-object v0, p0, Lcn/mucang/android/core/webview/client/g;->c:Lcn/mucang/android/core/webview/client/g$c;

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/core/webview/client/g;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/webview/client/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/webview/client/g;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/g;->a:Ljava/util/Map;

    const-string v1, "core.luban.album.interceptor.mucang.cn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/g;->b:Lcn/mucang/android/core/webview/client/g$c;

    invoke-virtual {p0, v1, v0}, Lcn/mucang/android/core/webview/client/g;->f(Ljava/lang/String;Lcn/mucang/android/core/webview/client/g$c;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/g;->a:Ljava/util/Map;

    const-string v1, "core.luban.local.file.interceptor.mucang.cn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/g;->c:Lcn/mucang/android/core/webview/client/g$c;

    invoke-virtual {p0, v1, v0}, Lcn/mucang/android/core/webview/client/g;->f(Ljava/lang/String;Lcn/mucang/android/core/webview/client/g$c;)V

    :cond_1
    return-void
.end method

.method public static b()Lcn/mucang/android/core/webview/client/g;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/webview/client/g$b;->a()Lcn/mucang/android/core/webview/client/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "/content:"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1}, Lf/a/a/b/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const-string v2, "size"

    .line 6
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/y;->g(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_3

    .line 7
    invoke-static {v1, p0}, Lcn/mucang/android/core/utils/e;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_3
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 10
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 11
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "image/png"

    goto :goto_1

    :cond_4
    const-string v1, "image/jpeg"

    .line 12
    :goto_1
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string v3, "UTF-8"

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v1, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcn/mucang/android/core/webview/protocol/e/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance p0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/core/webview/client/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcn/mucang/android/core/webview/client/g$c;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/g;->a:Ljava/util/Map;

    return-object v0
.end method

.method public f(Ljava/lang/String;Lcn/mucang/android/core/webview/client/g$c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/client/g;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "host \u6216 requestInterceptor\u4e3a\u7a7a"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
