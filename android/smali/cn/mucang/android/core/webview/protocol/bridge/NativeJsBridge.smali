.class public Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;
.super Lcn/mucang/android/core/webview/protocol/bridge/k0;
.source "SourceFile"


# static fields
.field private static final ALBUM:Ljava/lang/String; = "/native/album"

.field private static final CHECK_APP:Ljava/lang/String; = "/checkApp"

.field private static final HAS_NAV_PROTOCOL:Ljava/lang/String; = "/native/hasNavProtocol"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final OPEN_APP:Ljava/lang/String; = "/openApp"

.field private static final SAVE_IMAGE:Ljava/lang/String; = "/native/saveImage"

.field private static final UPLOAD_FILE:Ljava/lang/String; = "/native/uploadFile"

.field private static final UPLOAD_IMAGE:Ljava/lang/String; = "/native/uploadImage"


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/protocol/bridge/k0;-><init>(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/d;)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->uploadImage(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->saveImage(Ljava/util/Map;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic d(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    const-string v0, "package"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "scheme"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 11
    invoke-static {v0}, Lcn/mucang/android/core/utils/d;->j(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    :goto_0
    const-string v0, ""

    if-eqz p0, :cond_3

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/webview/core/d;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_3
    invoke-static {v0, v2}, Lcn/mucang/android/core/webview/core/d;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const-string v0, "package"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcn/mucang/android/core/utils/d;->e(Ljava/lang/String;)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/webview/core/d;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 3
    invoke-static {v0, p0}, Lcn/mucang/android/core/webview/core/d;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f(Ljava/util/Map;)Ljava/lang/String;
    .locals 9

    const-string v0, "bucket"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "contentType"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "type"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "sign"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "server"

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "path"

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 8
    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-static {v7}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-static {v0}, Lcn/mucang/android/core/webview/protocol/e/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "\u6587\u4ef6\u672a\u627e\u5230"

    .line 13
    invoke-static {p1, v2}, Lcn/mucang/android/core/webview/core/d;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "callbackName"

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "\u53c2\u6570\u9519\u8bef"

    .line 15
    invoke-static {p1, v2}, Lcn/mucang/android/core/webview/core/d;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic h(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->hasNavProtocol(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasNavProtocol(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "protocol"

    .line 1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lf/a/a/a/i/h;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "result"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v1, v0}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic i(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/z;->c(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic j(Ljava/util/Map;Z)V
    .locals 2

    const-string v0, "callbackName"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "___key_web_view_tag"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-direct {p0, p2, v0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->saveImageCallback(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l(Ljava/util/Map;)V
    .locals 2

    const-string v0, "data"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/t;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/t;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcn/mucang/android/core/webview/protocol/d/a;->e(Ljava/lang/String;Lcn/mucang/android/core/webview/protocol/d/a$a;)V

    return-void
.end method

.method private synthetic n(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance p2, Landroidx/appcompat/app/c$a;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v0, "\u4e3a\u4e86\u4fdd\u5b58\u56fe\u7247\uff0c\u8bf7\u6388\u4e88\u8bfb\u5199\u624b\u673a\u5b58\u50a8\u7684\u6743\u9650"

    .line 4
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/j;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/j;-><init>(Landroid/app/Activity;)V

    const-string p1, "\u786e\u5b9a"

    .line 5
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "\u53d6\u6d88"

    .line 6
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    return-void

    .line 8
    :cond_0
    new-instance p1, Lcn/mucang/android/core/webview/protocol/bridge/q;

    invoke-direct {p1, p0, p2}, Lcn/mucang/android/core/webview/protocol/bridge/q;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;Ljava/util/Map;)V

    invoke-static {p1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic p(Ljava/lang/String;JJZ)V
    .locals 0

    .line 1
    new-instance p6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "completedCount"

    invoke-virtual {p6, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "totalCount"

    invoke-virtual {p6, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object p2

    const/4 p3, 0x0

    .line 5
    invoke-static {p6, p3}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/core/webview/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    .line 3
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance p1, Lcn/mucang/android/core/api/upload/FileUploadApi;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/core/api/upload/FileUploadApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcn/mucang/android/core/webview/protocol/bridge/o;

    invoke-direct {p2, p0, p7}, Lcn/mucang/android/core/webview/protocol/bridge/o;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, p5, p6, p2}, Lcn/mucang/android/core/api/upload/FileUploadApi;->uploadGeneral(Ljava/io/File;Ljava/lang/String;Lcn/mucang/android/core/http/c/b;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p2}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object p2

    const/4 p3, 0x0

    .line 7
    invoke-static {p1, p3}, Lcn/mucang/android/core/webview/core/d;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p7, p1}, Lcn/mucang/android/core/webview/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "error"

    .line 10
    invoke-static {p3, p2}, Lcn/mucang/android/core/webview/core/d;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p1, p7, p2}, Lcn/mucang/android/core/webview/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private saveImage(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/m;

    invoke-direct {v1, p0, v0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/m;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;Landroid/app/Activity;Ljava/util/Map;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveImageCallback(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/webview/c;->b()Lcn/mucang/android/core/webview/c;

    move-result-object p1

    .line 4
    invoke-static {p3}, Lcn/mucang/android/core/utils/y;->g(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Lcn/mucang/android/core/webview/c;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/core/webview/protocol/bridge/j0;->webView:Lcn/mucang/android/core/webview/core/MucangWebView;

    invoke-virtual {p1}, Lcn/mucang/android/core/webview/core/MucangWebView;->getProtocolHandler()Lcn/mucang/android/core/webview/core/j;

    move-result-object p1

    .line 7
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/core/webview/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 8
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 10

    .line 1
    new-instance v9, Lcn/mucang/android/core/webview/protocol/bridge/p;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p5

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/core/webview/protocol/bridge/p;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private uploadImage(Ljava/util/Map;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "."

    const-string v1, "data"

    .line 1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, ""

    const-string v7, ""

    move-object v2, p0

    move-object v3, v8

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    .line 5
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "size"

    .line 6
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x12c

    invoke-static {v2, v3}, Lcn/mucang/android/core/utils/y;->h(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x2800

    if-le v2, v3, :cond_1

    const/16 v2, 0x2800

    :cond_1
    const-string v3, "bucket"

    .line 7
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "sign"

    .line 8
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "mcweb-image"

    .line 10
    :cond_2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, "V4cRZaKuTForV8Agl"

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 11
    :try_start_0
    invoke-static {v1}, Lcn/mucang/android/core/webview/protocol/d/a;->c(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v9, :cond_6

    :try_start_1
    const-string v4, "\""

    const-string v6, ""

    .line 12
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lcn/mucang/android/core/webview/protocol/d/a;->b(Ljava/lang/String;)Landroidx/core/util/d;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 14
    iget-object v4, v1, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_4

    const-string v4, ".jpg"

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17
    :cond_5
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    iget-object v1, v1, Landroidx/core/util/d;->b:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/j;->t([BLjava/io/File;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v1

    goto :goto_1

    :cond_6
    :try_start_3
    const-string v0, "http"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    goto :goto_1

    :cond_7
    move-object v0, v5

    :goto_1
    if-nez v5, :cond_9

    :try_start_4
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    move-object v2, p0

    move-object v3, v8

    .line 22
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    .line 23
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_8

    if-eqz v0, :cond_8

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_8
    return-object p1

    :cond_9
    :try_start_5
    const-string v1, "/content:"

    .line 26
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    .line 27
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 28
    :cond_a
    new-instance v1, Lf/a/a/a/t/b;

    invoke-direct {v1, v3, p1}, Lf/a/a/a/t/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Lf/a/a/a/t/b;->b()Lf/a/a/a/t/a;

    move-result-object p1

    mul-int/lit16 v2, v2, 0x400

    .line 30
    invoke-virtual {p1, v2}, Lf/a/a/a/t/a;->d(I)V

    .line 31
    invoke-virtual {v1, p1}, Lf/a/a/a/t/b;->d(Lf/a/a/a/t/a;)V

    .line 32
    invoke-virtual {v1, v5}, Lf/a/a/a/t/b;->e(Ljava/lang/String;)Lcn/mucang/android/core/api/ImageUploadResult;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 33
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "url"

    .line 34
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ImageUploadResult;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    move-object v2, p0

    move-object v3, v8

    .line 35
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    .line 36
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v9, :cond_b

    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_b
    return-object p1

    :cond_c
    if-eqz v9, :cond_d

    if-eqz v0, :cond_d

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v5, v0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v5, v0

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_2
    move v4, v9

    goto :goto_6

    :catch_1
    move-exception p1

    :goto_3
    move v4, v9

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    :goto_4
    :try_start_6
    const-string v0, "e"

    .line 41
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    .line 42
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 43
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_d
    :goto_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, ""

    const-string v7, ""

    move-object v2, p0

    move-object v3, v8

    .line 44
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/core/webview/protocol/bridge/j0;->buildCallbackData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;ZILjava/lang/String;)V

    .line 45
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_6
    if-eqz v4, :cond_e

    if-eqz v5, :cond_e

    .line 46
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 48
    :cond_e
    throw p1
.end method


# virtual methods
.method protected addFunction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/s;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/s;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;)V

    const-string v2, "/native/hasNavProtocol"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/u;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/u;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;)V

    const-string v2, "/native/saveImage"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/l;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/l;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;)V

    const-string v2, "/native/uploadImage"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    sget-object v1, Lcn/mucang/android/core/webview/protocol/bridge/n;->a:Lcn/mucang/android/core/webview/protocol/bridge/n;

    const-string v2, "/openApp"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    sget-object v1, Lcn/mucang/android/core/webview/protocol/bridge/r;->a:Lcn/mucang/android/core/webview/protocol/bridge/r;

    const-string v2, "/checkApp"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/webview/protocol/bridge/k0;->bridge:Lcn/mucang/android/core/webview/core/d;

    new-instance v1, Lcn/mucang/android/core/webview/protocol/bridge/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/webview/protocol/bridge/k;-><init>(Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;)V

    const-string v2, "/native/uploadFile"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/d;->a(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    return-void
.end method

.method public synthetic c(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->f(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k(Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->j(Ljava/util/Map;Z)V

    return-void
.end method

.method public synthetic m(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->l(Ljava/util/Map;)V

    return-void
.end method

.method public synthetic o(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->n(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method public synthetic q(Ljava/lang/String;JJZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->p(Ljava/lang/String;JJZ)V

    return-void
.end method

.method public synthetic s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
