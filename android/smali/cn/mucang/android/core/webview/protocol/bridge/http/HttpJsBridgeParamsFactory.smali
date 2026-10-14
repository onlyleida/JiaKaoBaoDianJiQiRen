.class public final Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JV\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\u00042\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0011H\u0002J\u001e\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0004H\u0002J(\u0010\u0018\u001a\u00020\u00192\u0016\u0010\u001a\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0018\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0002J\u0018\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0010!\u001a\u0004\u0018\u00010\u0004H\u0002J`\u0010\"\u001a\u00020\u00192\u0016\u0010\u001a\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001b2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00042\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0011H\u0002J\u0008\u0010#\u001a\u00020$H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;",
        "",
        "()V",
        "BAD_KEY_FROM_H5_R",
        "",
        "BAD_KEY_FROM_H5_V",
        "formParams",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgePostFormParams;",
        "path",
        "formList",
        "",
        "Lcn/mucang/android/core/http/MucangNameValuePair;",
        "host",
        "headerList",
        "",
        "signKey",
        "appendBasicParams",
        "",
        "timeout",
        "",
        "encrypt",
        "formatUrl",
        "Lkotlin/Pair;",
        "fullUrl",
        "get",
        "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeBaseParams;",
        "h5RequestData",
        "",
        "httpMethod",
        "Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;",
        "parseHeaderFromH5",
        "header",
        "parseParams",
        "params",
        "parsePostParams",
        "throwBadKey",
        "",
        "webview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;-><init>()V

    sput-object v0, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJZ)Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "ZJZ)",
            "Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p3

    .line 1
    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    invoke-static {p2}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 8
    invoke-virtual {v7}, Lcn/mucang/android/core/http/MucangNameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_3

    .line 9
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v7}, Lcn/mucang/android/core/http/MucangNameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual {v7}, Lcn/mucang/android/core/http/MucangNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v10, 0x1

    :goto_4
    if-eqz v10, :cond_6

    .line 12
    invoke-virtual {v7}, Lcn/mucang/android/core/http/MucangNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 13
    :cond_6
    invoke-virtual {v7}, Lcn/mucang/android/core/http/MucangNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    :goto_5
    sget-object v9, Lcn/mucang/android/core/api/f/b;->i:Lcn/mucang/android/core/api/f/b$a;

    const-string v10, "name"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lcn/mucang/android/core/api/f/b$a;->f(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 15
    invoke-virtual {v2, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    .line 16
    invoke-virtual {v0, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 17
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_a

    .line 18
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_10

    .line 19
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 20
    invoke-virtual {v7}, Lcn/mucang/android/core/http/MucangNameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "_r"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 21
    invoke-virtual {v7}, Lcn/mucang/android/core/http/MucangNameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_v"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v7, 0x1

    :goto_9
    if-eqz v7, :cond_b

    goto :goto_a

    :cond_e
    move-object v3, v4

    :goto_a
    if-nez v3, :cond_f

    .line 22
    new-instance v10, Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;

    .line 23
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "pathBuilder.toString()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v10

    move-object v1, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move-object v9, p2

    .line 24
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJZLjava/util/List;)V

    return-object v10

    .line 25
    :cond_f
    invoke-direct {p0}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;->g()V

    throw v4

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 26
    sget-object v5, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory$formParams$friendlyString$1;->INSTANCE:Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory$formParams$friendlyString$1;

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const-string v8, ","

    move-object p1, v3

    move-object p2, v8

    move-object p3, v0

    move-object p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move/from16 p8, v6

    move-object/from16 p9, v7

    invoke-static/range {p1 .. p9}, Lkotlin/collections/s;->m0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u53c2\u6570\u4e0eURL\u4e0a\u91cd\u590d\u88ab\u79fb\u9664\uff0c\u5bfc\u81f4Post\u4f53\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u53d1\u9001\u8bf7\u6c42"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final b(Ljava/lang/String;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_8

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3f

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_4

    .line 7
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_7

    const-string p1, "/"

    const/4 v2, 0x2

    const/4 v5, 0x0

    .line 8
    invoke-static {v3, p1, v1, v2, v5}, Lkotlin/text/l;->o(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v0

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :cond_5
    invoke-static {v4, p1, v1, v2, v5}, Lkotlin/text/l;->B(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11
    invoke-static {p1, v4}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 12
    :cond_6
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 13
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad path of url:"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad url:"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(Ljava/util/Map;Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;)Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;",
            ")",
            "Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "h5RequestData"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "httpMethod"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "url"

    .line 1
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_7

    const-string v5, "signKey"

    .line 3
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, ""

    :cond_2
    move-object v10, v5

    const-string v5, "basicParams"

    .line 4
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5
    invoke-static {v5, v3}, Lcn/mucang/android/core/webview/protocol/e/a;->k(Ljava/lang/String;Z)Z

    move-result v11

    const-string v5, "needCache"

    .line 6
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-static {v5, v4}, Lcn/mucang/android/core/webview/protocol/e/a;->k(Ljava/lang/String;Z)Z

    move-result v15

    const-string v5, "needEncrypted"

    .line 8
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    invoke-static {v5, v3}, Lcn/mucang/android/core/webview/protocol/e/a;->k(Ljava/lang/String;Z)Z

    move-result v14

    const-string v3, "timeout"

    .line 10
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v5, 0x41200000    # 10.0f

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lkotlin/text/l;->i(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_2
    const-wide/16 v6, 0x3e8

    long-to-float v3, v6

    mul-float v5, v5, v3

    float-to-long v12, v5

    .line 11
    sget-object v3, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;->a:Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;

    invoke-direct {v3, v2}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;->b(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    const-string v5, "headers"

    .line 12
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 13
    invoke-direct {v3, v5}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    const-string v5, "_r"

    const-string v6, "="

    .line 14
    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x2

    move-object/from16 v16, v3

    const/4 v3, 0x0

    invoke-static {v2, v5, v4, v1, v3}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "_v"

    .line 15
    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4, v1, v3}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 16
    sget-object v1, Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;->GET:Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;

    if-ne v0, v1, :cond_5

    .line 17
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;

    move-object v6, v0

    invoke-direct/range {v6 .. v15}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJZZ)V

    goto :goto_3

    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v7

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    move-wide v7, v12

    move v9, v14

    .line 18
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;->f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJZ)Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;

    move-result-object v0

    :goto_3
    return-object v0

    .line 19
    :cond_6
    invoke-direct/range {v16 .. v16}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;->g()V

    throw v3

    .line 20
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad url:"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final d(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    if-ne v3, v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    return-object v0

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 5
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    goto :goto_2

    .line 6
    :cond_6
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_8

    goto :goto_2

    .line 8
    :cond_8
    new-instance v6, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-direct {v6, v4, v5}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-object v0
.end method

.method private final e(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    if-ne v3, v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    return-object v0

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 5
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    goto :goto_2

    .line 6
    :cond_6
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_8

    goto :goto_2

    .line 8
    :cond_8
    new-instance v6, Lcn/mucang/android/core/http/MucangNameValuePair;

    .line 9
    sget-object v7, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-static {v5, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-direct {v6, v4, v5}, Lcn/mucang/android/core/http/MucangNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-object v0
.end method

.method private final f(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJZ)Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "ZJZ)",
            "Lcn/mucang/android/core/webview/protocol/bridge/http/r/a;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "postForm"

    .line 1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v12, p0

    .line 2
    invoke-direct {v12, v1}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v1, "postString"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    .line 5
    invoke-direct/range {v2 .. v11}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJZ)Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;

    move-result-object v0

    goto :goto_2

    :cond_2
    if-eqz v22, :cond_3

    .line 6
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-nez v0, :cond_5

    .line 7
    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;

    move-object v13, v0

    move-object/from16 v14, p3

    move-object/from16 v15, p2

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move-wide/from16 v19, p7

    move/from16 v21, p9

    invoke-direct/range {v13 .. v22}, Lcn/mucang/android/core/webview/protocol/bridge/http/r/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJZLjava/lang/String;)V

    :goto_2
    return-object v0

    .line 8
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Post\u4f53\u4e3a\u7a7a\u65e0\u6cd5\u63d0\u4ea4\u6570\u636e."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final g()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'_r\' or \'_v\' should not pass from h5."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
