.class public final Lcn/mucang/android/core/webview/core/page/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\u000cH\u0002J\u0008\u0010\u0011\u001a\u00020\nH\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u0002J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u0002J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u0007J\u0010\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0003H\u0002J\u0008\u0010\u0019\u001a\u00020\u000cH\u0002J\u0012\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0002J\u0012\u0010\u001c\u001a\u00020\u000c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/core/webview/core/page/AsteroidCache;",
        "",
        "targetHost",
        "",
        "context",
        "Landroid/content/Context;",
        "asteroidManager",
        "Lcn/mucang/android/core/webview/core/page/AsteroidManager;",
        "(Ljava/lang/String;Landroid/content/Context;Lcn/mucang/android/core/webview/core/page/AsteroidManager;)V",
        "firstPage",
        "",
        "clearArchiveCache",
        "",
        "clearDir",
        "file",
        "Ljava/io/File;",
        "clearFileCache",
        "forceTryRefresh",
        "getArchiveVersion",
        "getLastFileVersion",
        "localWebResourceResponse",
        "Landroid/webkit/WebResourceResponse;",
        "url",
        "log",
        "message",
        "performedRefresh",
        "saveArchiveVersion",
        "version",
        "saveLastFileVersion",
        "Companion",
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
.field private static final e:Ljava/lang/String; = "AsteroidCache"

.field private static final f:Ljava/lang/String; = "X-Applet-Pre-Load"

.field private static final g:Ljava/lang/String; = "X-Applet-Version"

.field private static final h:Ljava/lang/String; = "X-Applet-App-Id"

.field private static final i:Ljava/lang/String; = "asteroid_file"

.field private static final j:Ljava/lang/String; = "asteroid_archive"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Lcn/mucang/android/core/webview/core/page/AsteroidManager;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcn/mucang/android/core/webview/core/page/AsteroidManager;)V
    .locals 1

    const-string v0, "targetHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asteroidManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/core/webview/core/page/d;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/core/webview/core/page/d;->c:Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/core/webview/core/page/d;->d:Z

    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "getAppletArchiveCacheDir(targetHost)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/core/page/d;->b(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/core/page/d;->l(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-string v0, "file.listFiles()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-string v3, "dir"

    .line 3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/io/g;->k(Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/webview/core/page/e;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "getAppletCacheDir(targetHost)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/core/webview/core/page/d;->b(Ljava/io/File;)V

    return-void
.end method

.method private final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/d;->d:Z

    return v0
.end method

.method private final e()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/d;->b:Landroid/content/Context;

    sget-object v1, Lcn/mucang/android/core/webview/core/page/d;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/d;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/d;->b:Landroid/content/Context;

    sget-object v1, Lcn/mucang/android/core/webview/core/page/d;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/d;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lcn/mucang/android/core/webview/core/page/d;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/core/webview/core/page/d;->i(Lcn/mucang/android/core/webview/core/page/d;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method private static final i(Lcn/mucang/android/core/webview/core/page/d;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const-string v0, "$this_runCatching"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resourceVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/mucang/android/core/webview/core/page/d;->l(Ljava/lang/String;)V

    return-void
.end method

.method private final j(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/webview/core/page/d;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/core/webview/core/page/d;->d:Z

    return-void
.end method

.method private final l(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/d;->b:Landroid/content/Context;

    .line 2
    sget-object v1, Lcn/mucang/android/core/webview/core/page/d;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final m(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/d;->b:Landroid/content/Context;

    .line 2
    sget-object v1, Lcn/mucang/android/core/webview/core/page/d;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return-object v9

    .line 1
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcn/mucang/android/core/webview/core/page/d;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v9

    .line 3
    :cond_1
    iget-object v2, v1, Lcn/mucang/android/core/webview/core/page/d;->a:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/webview/core/page/e;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4
    iget-object v3, v1, Lcn/mucang/android/core/webview/core/page/d;->a:Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/webview/core/page/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_3

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const-string v6, "/"

    const/4 v7, 0x2

    .line 6
    invoke-static {v0, v6, v5, v7, v9}, Lkotlin/text/l;->o(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_2

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_4

    const-string v6, "index.html"

    .line 7
    invoke-static {v0, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_4
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/mucang/android/core/webview/core/page/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcn/mucang/android/core/webview/core/page/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    const-string v0, "(this as java.lang.String).intern()"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v12

    .line 11
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 12
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/core/webview/core/page/d;->d()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v0, :cond_15

    .line 13
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/core/webview/core/page/d;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 14
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 15
    new-instance v2, Lcn/mucang/android/core/http/a$b;

    invoke-direct {v2}, Lcn/mucang/android/core/http/a$b;-><init>()V

    .line 16
    invoke-static {}, Lcn/mucang/android/core/webview/core/page/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/core/http/a$b;->k(Ljava/lang/String;)Lcn/mucang/android/core/http/a$b;

    .line 17
    invoke-virtual {v2}, Lcn/mucang/android/core/http/a$b;->i()Lcn/mucang/android/core/http/a;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v8}, Lcn/mucang/android/core/http/a;->w(Ljava/lang/String;)Lcn/mucang/android/core/http/b;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcn/mucang/android/core/http/b;->b()Ljava/util/Map;

    move-result-object v3

    .line 20
    invoke-virtual {v2}, Lcn/mucang/android/core/http/b;->c()Ljava/io/InputStream;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 21
    :try_start_2
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v6, Lcn/mucang/android/core/webview/core/page/d;->g:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_8

    move-object v6, v9

    goto :goto_3

    :cond_8
    invoke-static {v6, v5}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_3
    iput-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 22
    sget-object v6, Lcn/mucang/android/core/webview/core/page/d;->f:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_a

    :cond_9
    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    invoke-static {v6, v5}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v4, :cond_9

    .line 23
    :goto_5
    sget-object v6, Lcn/mucang/android/core/webview/core/page/d;->h:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-wide/16 v6, 0x0

    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v3, v5}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v6, v5

    .line 24
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/core/webview/core/page/d;->f()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/core/webview/core/page/d;->e()Ljava/lang/String;

    move-result-object v5

    .line 26
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", file version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", archive version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " download: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", url: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 27
    invoke-direct {v1, v14}, Lcn/mucang/android/core/webview/core/page/d;->j(Ljava/lang/String;)V

    .line 28
    iget-object v14, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 29
    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    const-string v0, "No version, can\'t cache, url: "

    .line 30
    invoke-static {v0, v8}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/mucang/android/core/webview/core/page/d;->j(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 31
    :try_start_3
    invoke-static {v13, v9}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    monitor-exit v12

    return-object v9

    .line 32
    :cond_e
    :try_start_4
    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 33
    :cond_f
    iget-object v14, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v14, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "File version mismatch, clear old cache, url: "

    .line 34
    invoke-static {v3, v8}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcn/mucang/android/core/webview/core/page/d;->j(Ljava/lang/String;)V

    .line 35
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/core/webview/core/page/d;->c()V

    .line 36
    :cond_10
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "Archive version mismatch, clear old cache, url: "

    .line 37
    invoke-static {v3, v8}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcn/mucang/android/core/webview/core/page/d;->j(Ljava/lang/String;)V

    .line 38
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/core/webview/core/page/d;->a()V

    :cond_11
    if-nez v0, :cond_13

    const-string v0, "No cache, try to cache, url: "

    .line 39
    invoke-static {v0, v8}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/mucang/android/core/webview/core/page/d;->j(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 40
    :try_start_5
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcn/mucang/android/core/webview/core/page/d;->m(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    :goto_7
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 43
    :try_start_6
    invoke-static {v13, v3}, Lcn/mucang/android/core/utils/j;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 44
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 45
    :try_start_7
    invoke-static {v3, v9}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v5, v0

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v14, v0

    :try_start_9
    invoke-static {v3, v5}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 46
    :catch_0
    :try_start_a
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_13
    :goto_8
    if-eqz v4, :cond_14

    const-string v0, "Try to download archive package, url: "

    .line 47
    invoke-static {v0, v8}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/mucang/android/core/webview/core/page/d;->j(Ljava/lang/String;)V

    .line 48
    iget-object v0, v1, Lcn/mucang/android/core/webview/core/page/d;->c:Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/core/webview/core/page/d;->e()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcn/mucang/android/core/webview/core/page/a;

    invoke-direct {v15, v1, v2}, Lcn/mucang/android/core/webview/core/page/a;-><init>(Lcn/mucang/android/core/webview/core/page/d;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v2, v0

    move-object/from16 v3, p1

    move-wide v4, v6

    move-object v6, v14

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)V

    .line 49
    :cond_14
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 50
    :try_start_b
    invoke-static {v13, v9}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 51
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 52
    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_d
    invoke-static {v13, v2}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    .line 53
    :try_start_e
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_15
    :goto_9
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v10, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16

    .line 56
    iput-object v11, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 57
    :cond_16
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "Hit cache, url: "

    .line 58
    invoke-static {v2, v8}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/mucang/android/core/webview/core/page/d;->j(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 59
    :try_start_f
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 60
    new-instance v2, Landroid/webkit/WebResourceResponse;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/core/webview/core/page/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v4, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    monitor-exit v12

    return-object v2

    :catchall_5
    move-exception v0

    :try_start_10
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_17
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 62
    monitor-exit v12

    const-string v0, "Fallback to load by webview, url: "

    .line 63
    invoke-static {v0, v8}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/mucang/android/core/webview/core/page/d;->j(Ljava/lang/String;)V

    return-object v9

    :catchall_6
    move-exception v0

    .line 64
    monitor-exit v12

    throw v0
.end method
