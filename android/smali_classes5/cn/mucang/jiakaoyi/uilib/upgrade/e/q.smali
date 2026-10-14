.class public Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;
    }
.end annotation


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->a:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->b:Z

    return-void
.end method

.method private static A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Float;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "\u83b7\u53d6apk\u5b58\u50a8\u6587\u4ef6\u5931\u8d25"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u672c\u5730\u6709\u4e0b\u8f7d\u597d\u7684apk "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p5}, Landroid/app/Dialog;->dismiss()V

    .line 12
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/k;

    invoke-direct {p0, p3}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-static {v4, p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->j(Ljava/io/File;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void

    .line 13
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f13\u5b58\u7684\u4e0b\u8f7d\u6587\u4ef6\u6709\u95ee\u9898 md5 \u51fa\u73b0\u95ee\u9898 fileMD5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; apkMd5 = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\uff1a url "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    invoke-static {v0, v4}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->e(Ljava/io/File;Ljava/io/File;)V

    .line 17
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/upgrade/e/c;

    move-object v2, p1

    move-object v3, p0

    move-object v5, p4

    move-object v6, p2

    move-object v7, p5

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/c;-><init>(Ljava/lang/String;Ljava/io/File;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static B()V
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->b:Z

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$e;-><init>()V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;I)V

    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->b:Z

    return p0
.end method

.method static synthetic c(Ljava/io/File;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->j(Ljava/io/File;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public static d(ZLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6b63\u5728\u68c0\u67e5\u66f4\u65b0,\u8bf7\u7a0d\u4faf..."

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/upgrade/e/d;

    invoke-direct {v1, v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/d;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    array-length v0, p0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/h;

    invoke-direct {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/h;-><init>([Ljava/io/File;Ljava/io/File;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static f(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->f(F)V

    .line 4
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/upgrade/e/n;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/n;-><init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/upgrade/e/o;

    invoke-direct {v4, p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/o;-><init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V

    return-void
.end method

.method private static g()I
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->a:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static h()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v0}, Lcn/mucang/jiakaoyi/uilib/unityres/a;->a(ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result v2

    sget v3, Lcn/mucang/jiakaoyi/uilib/unityres/a;->d:I

    if-ne v2, v3, :cond_0

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNewUpgradeInfoModel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static i()I
    .locals 2

    const-string v0, "APKUpdateTime"

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static j(Ljava/io/File;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, p0, v3}, Lcn/mucang/android/core/utils/m;->o(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/io/File;Z)V

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object p0

    const/16 v1, 0x6e

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/upgrade/e/f;

    invoke-direct {v2, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/f;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-virtual {p0, v0, v1, v2}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8df3\u8f6c\u5b89\u88c5\u9875\u9762\u62a5\u9519 \uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->h()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/upgrade/e/j;

    invoke-direct {v1, p0, v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/j;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "\u66f4\u65b0\u5931\u8d25"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/upgrade/e/e;

    invoke-direct {p1, p2, p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/e;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic l([Ljava/io/File;Ljava/io/File;)V
    .locals 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 5
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v3}, Lcn/mucang/android/core/utils/p0;->e(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u5220\u9664\u7f13\u5b58apk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic m(Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic n(Lcn/mucang/android/jiakaoyi/framework/h/b;IILandroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7528\u6237\u53d6\u6d88\u5b89\u88c5 requestCode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resultCode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/16 p2, 0x6e

    if-ne p1, p2, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic o(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u66f4\u65b0\u8bf7\u6c42\u7684\u8fd4\u56de\u6570\u636e\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "updateApk"

    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result p0

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->t()I

    move-result v0

    if-le p0, v0, :cond_1

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6709\u6700\u65b0\u7684\u7248\u672c,\u6700\u65b0\u7684\u7248\u672c\u662f\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    invoke-static {p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->y(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u6682\u65e0\u66f4\u65b0"

    .line 8
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 9
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic p(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    return-void
.end method

.method static synthetic q(Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/view/View;)V
    .locals 6

    if-eqz p0, :cond_0

    const/4 p5, 0x0

    .line 1
    invoke-virtual {p0, p5}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->f(F)V

    .line 2
    :cond_0
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$a;

    invoke-direct {v3, p4, p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$b;

    invoke-direct {v4, p0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$b;-><init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V

    return-void
.end method

.method static synthetic r(ILcn/mucang/jiakaoyi/uilib/upgrade/e/p;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/view/View;)V
    .locals 0

    if-lez p0, :cond_0

    const-string p3, "APKUpdateTime"

    .line 1
    invoke-static {p3, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_1

    .line 3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic s(Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;)V
    .locals 2

    const-string v0, "\u4e0b\u8f7d\u94fe\u63a5\u4e3anull"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t(Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;Ljava/lang/Exception;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "\u4e0b\u8f7dapk\u5931\u8d25"

    .line 1
    invoke-interface {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic u(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic v(Ljava/lang/String;Ljava/io/File;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$c;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/io/File;)V

    invoke-static {p0, p1, v6}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->z(Ljava/lang/String;Ljava/io/File;Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;)V

    return-void
.end method

.method private static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v6, "\u7acb\u5373\u66f4\u65b0"

    const/4 v7, 0x0

    move-object v0, v8

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    new-instance v6, Lcn/mucang/jiakaoyi/uilib/upgrade/e/l;

    move-object v0, v6

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/l;-><init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-virtual {v8, v6}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->e(Landroid/view/View$OnClickListener;)V

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/i;

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v2, v8, v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/i;-><init>(ILcn/mucang/jiakaoyi/uilib/upgrade/e/p;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-virtual {v8, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->d(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static x(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->y(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public static y(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            "Z",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getForce()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getNotice()Z

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 3
    :goto_1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->i()I

    move-result v2

    .line 4
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->g()I

    move-result v11

    if-eqz v1, :cond_7

    if-nez p1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getForce()Z

    move-result p1

    if-nez p1, :cond_3

    if-le v11, v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_8

    .line 6
    invoke-interface {p2, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 7
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getNoticeTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "\u7248\u672c\u66f4\u65b0\u5566"

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getNoticeTitle()Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v6, p1

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getNoticeContent()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "\u89e3\u51b3\u4e00\u4e9b\u95ee\u9898"

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getNoticeContent()Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v8, p1

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getForce()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    const-string p1, "\u4e0b\u6b21\u518d\u8bf4"

    :goto_5
    move-object v9, p1

    .line 10
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    const-string v1, "_"

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_v"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getMd5()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v7

    move-object v10, p2

    .line 15
    invoke-static/range {v3 .. v11}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;I)V

    goto :goto_6

    :cond_7
    if-eqz p2, :cond_8

    .line 16
    invoke-interface {p2, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_8
    :goto_6
    return-void
.end method

.method private static z(Ljava/lang/String;Ljava/io/File;Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;)V
    .locals 3

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownload url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; localFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/t;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$d;

    invoke-direct {v1, p2, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$d;-><init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->d(Lcn/mucang/android/jiakaoyi/framework/utils/s;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownload url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; localFile="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ; "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 9
    :cond_1
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/m;

    invoke-direct {p0, p2, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/m;-><init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;Ljava/lang/Exception;)V

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 10
    :cond_2
    :goto_1
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/g;

    invoke-direct {p0, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/g;-><init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;)V

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method
