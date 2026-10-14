.class public final Lcn/mucang/jiakaoyi/uilib/s/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0007H\u0003J\u0008\u0010\u0012\u001a\u00020\rH\u0007J\u0008\u0010\u0013\u001a\u00020\rH\u0007J\u0018\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0004H\u0007J\u0008\u0010\u001a\u001a\u00020\rH\u0007J\u0008\u0010\u001b\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u0008\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\tj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/utils/DownloadUtils;",
        "",
        "()V",
        "PACKAGE_K2",
        "",
        "PACKAGE_K3",
        "canDownload",
        "",
        "installMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "checkInstall",
        "",
        "packageName",
        "key",
        "title",
        "update",
        "checkInstallK2",
        "checkInstallK3",
        "doDownload",
        "url",
        "goInstall",
        "file",
        "Ljava/io/File;",
        "installRobot",
        "updateInstallBetaK2",
        "updateInstallBetaK3",
        "uilib_release"
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/s/i;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/s/i;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/s/i;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/s/i;->a:Lcn/mucang/jiakaoyi/uilib/s/i;

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/s/i;->b:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/jiakaoyi/uilib/s/i;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/jiakaoyi/uilib/s/i;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/s/i;->j(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic b(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/jiakaoyi/uilib/s/i;->c:Z

    return-void
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/o0;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u5e94\u7528\u5df2\u5b89\u88c5"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-boolean p1, Lcn/mucang/jiakaoyi/uilib/s/i;->c:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    sput-boolean p1, Lcn/mucang/jiakaoyi/uilib/s/i;->c:Z

    .line 5
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/s/a;

    invoke-direct {p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/s/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcn/mucang/jiakaoyi/uilib/s/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/s/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "$key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    :try_start_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/l;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/i/l;-><init>()V

    .line 2
    const-class v2, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    .line 3
    invoke-virtual {v1, p0, v2}, Lcn/mucang/jiakaoyi/uilib/i/l;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;->getValue()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/s/i;->a:Lcn/mucang/jiakaoyi/uilib/s/i;

    invoke-direct {v1, p0, p1}, Lcn/mucang/jiakaoyi/uilib/s/i;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    sput-boolean v0, Lcn/mucang/jiakaoyi/uilib/s/i;->c:Z

    const-string p0, "\u672a\u68c0\u6d4b\u5230\u4e0b\u8f7d\u5730\u5740"

    .line 7
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    sput-boolean v0, Lcn/mucang/jiakaoyi/uilib/s/i;->c:Z

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingViewModel"

    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static final f()V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/i;->a:Lcn/mucang/jiakaoyi/uilib/s/i;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$string;->k3_app_name:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "getContext().getString(R.string.k3_app_name)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cn.mucang.android.jiakaoyi"

    const-string v2, "k3_download_url"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcn/mucang/jiakaoyi/uilib/s/i;->d(Lcn/mucang/jiakaoyi/uilib/s/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/s/b;

    invoke-direct {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/s/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcn/mucang/jiakaoyi/uilib/s/i;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    sget-object v3, Lcn/mucang/jiakaoyi/uilib/s/i;->a:Lcn/mucang/jiakaoyi/uilib/s/i;

    sput-boolean v1, Lcn/mucang/jiakaoyi/uilib/s/i;->c:Z

    .line 8
    invoke-static {}, Lcn/mucang/android/download/a;->G()Lcn/mucang/android/download/a;

    move-result-object v4

    const-class v5, Lcn/mucang/android/download/DownloadEntity;

    .line 9
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v6, "installMap[url]!!"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcn/mucang/android/core/db/a;->m(Ljava/lang/Class;J)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/download/DownloadEntity;

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v2}, Lcn/mucang/android/download/DownloadEntity;->getDownloadStatus()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    const-string p0, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u4e0b\u8f7d\u5b8c\u6210\u540e\u7acb\u5373\u5b89\u88c5\uff0c\u8bf7\u7a0d\u540e"

    .line 11
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Lcn/mucang/android/download/DownloadEntity;->getDownloadStatus()I

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1

    const-string p0, "\u6b63\u5728\u5b89\u88c5\u4e2d\uff0c\u8bf7\u7a0d\u540e"

    .line 13
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 14
    invoke-direct {v3, v0}, Lcn/mucang/jiakaoyi/uilib/s/i;->j(Ljava/io/File;)V

    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 17
    :cond_2
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object v2

    .line 18
    new-instance v3, Lcn/mucang/android/download/client/DownloadManager$Request;

    invoke-direct {v3, p0}, Lcn/mucang/android/download/client/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    const-string v4, "jky"

    invoke-virtual {v3, v4}, Lcn/mucang/android/download/client/DownloadManager$Request;->b(Ljava/lang/String;)Lcn/mucang/android/download/client/DownloadManager$Request;

    const/4 v4, 0x3

    .line 19
    invoke-virtual {v3, v4}, Lcn/mucang/android/download/client/DownloadManager$Request;->a(I)Lcn/mucang/android/download/client/DownloadManager$Request;

    .line 20
    invoke-virtual {v3, v1}, Lcn/mucang/android/download/client/DownloadManager$Request;->c(Z)Lcn/mucang/android/download/client/DownloadManager$Request;

    .line 21
    invoke-virtual {v3, p1}, Lcn/mucang/android/download/client/DownloadManager$Request;->e(Ljava/lang/String;)Lcn/mucang/android/download/client/DownloadManager$Request;

    .line 22
    invoke-virtual {v3, v0}, Lcn/mucang/android/download/client/DownloadManager$Request;->d(Ljava/io/File;)Lcn/mucang/android/download/client/DownloadManager$Request;

    .line 23
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/s/c;

    invoke-direct {p1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/s/c;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v2, v3, p1}, Lcn/mucang/android/download/client/DownloadManager;->g(Lcn/mucang/android/download/client/DownloadManager$Request;Lcn/mucang/android/download/client/c;)V

    goto :goto_0

    .line 24
    :cond_3
    sput-boolean v1, Lcn/mucang/jiakaoyi/uilib/s/i;->c:Z

    const-string p0, "\u672a\u68c0\u6d4b\u5230\u4e0b\u8f7d\u5730\u5740"

    .line 25
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final i(Ljava/lang/String;Ljava/io/File;Ljava/lang/Long;)V
    .locals 3

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/i;->b:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object p0

    new-instance p2, Lcn/mucang/jiakaoyi/uilib/s/i$a;

    invoke-direct {p2, p1}, Lcn/mucang/jiakaoyi/uilib/s/i$a;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p2}, Lcn/mucang/android/download/client/DownloadManager;->c(Lcn/mucang/android/download/client/a;)V

    const-string p0, "\u5f00\u59cb\u4e0b\u8f7d\uff0c\u4e0b\u8f7d\u5b8c\u6210\u540e\u7acb\u5373\u5b89\u88c5\uff0c\u8bf7\u7a0d\u540e"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private final j(Ljava/io/File;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    const/4 v3, 0x1

    .line 5
    invoke-static {v1, v0, v2, p1, v3}, Lcn/mucang/android/core/utils/m;->o(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/io/File;Z)V

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p1

    const-string v1, "getContext()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/s/i;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/s/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Ljava/lang/String;Ljava/io/File;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/s/i;->i(Ljava/lang/String;Ljava/io/File;Ljava/lang/Long;)V

    return-void
.end method
