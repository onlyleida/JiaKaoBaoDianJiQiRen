.class public Lcn/mucang/jiakaoyi/uilib/q/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/q/h$c;,
        Lcn/mucang/jiakaoyi/uilib/q/h$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(JLjava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/q/h;->m(JLjava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(JLcn/mucang/jiakaoyi/uilib/q/h$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/q/h;->f(JLcn/mucang/jiakaoyi/uilib/q/h$b;)V

    return-void
.end method

.method private static d(J)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/q/h;->e(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(JLcn/mucang/jiakaoyi/uilib/q/h$b;)V
    .locals 1

    const-string v0, "\u66f4\u65b0\u5730\u56fe\u51fa\u9519,\u4f7f\u7528\u7f13\u5b58\u5730\u56fe\u6216\u8005\u91cd\u65b0\u66f4\u65b0"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/q/h;->d(J)Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    invoke-interface {p2, p1, p0}, Lcn/mucang/jiakaoyi/uilib/q/h$b;->b(ZLjava/io/File;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcn/mucang/jiakaoyi/uilib/q/h$b;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-interface {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/q/h$b;->b(ZLjava/io/File;)V

    return-void
.end method

.method static synthetic h(Lcn/mucang/jiakaoyi/uilib/q/h$b;Ljava/io/File;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lcn/mucang/jiakaoyi/uilib/q/h$b;->b(ZLjava/io/File;)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZLcn/mucang/jiakaoyi/uilib/q/h$c;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showDialog \u5f00\u59cb\u66f4\u65b0\u5730\u56fe examSiteId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ;mapDataUrl: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->e(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ;mapDataMd5:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataUrl:Ljava/lang/String;

    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    invoke-static {v0, v1, p1, p0, p2}, Lcn/mucang/jiakaoyi/uilib/q/h;->n(JLjava/lang/String;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/q/h$b;)V

    return-void
.end method

.method static synthetic j(Lcn/mucang/jiakaoyi/uilib/q/h$b;J)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p1, p2, p0}, Lcn/mucang/jiakaoyi/uilib/q/h;->f(JLcn/mucang/jiakaoyi/uilib/q/h$b;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/q/h$b;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V
    .locals 8

    .line 1
    new-instance v6, Lcn/mucang/jiakaoyi/uilib/q/f;

    invoke-direct {v6}, Lcn/mucang/jiakaoyi/uilib/q/f;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MapDownloadDialog"

    invoke-virtual {v6, v0, v1}, Lf/a/a/a/n/d/f;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 3
    new-instance v7, Lcn/mucang/jiakaoyi/uilib/q/h$c;

    move-object v0, v7

    move-object v1, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/q/h$c;-><init>(Lcn/mucang/jiakaoyi/uilib/q/f;Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/q/h$b;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V

    .line 4
    invoke-virtual {v6}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {v6}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    :cond_0
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/q/a;

    invoke-direct {p0, p2, p3, v7}, Lcn/mucang/jiakaoyi/uilib/q/a;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;ZLcn/mucang/jiakaoyi/uilib/q/h$c;)V

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static l(J)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/q/h;->d(J)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/q/g;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 5
    throw p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static m(JLjava/io/File;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->B2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    :goto_0
    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 7
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/q/h;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p1, v0, p3}, Lcn/mucang/jiakaoyi/uilib/s/j;->u(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/q/h;->e(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p0, p1, v0, p3}, Lcn/mucang/jiakaoyi/uilib/s/j;->u(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static n(JLjava/lang/String;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/q/h$b;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, "MC_ExamMap"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 7
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-static {p0, p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/q/h;->m(JLjava/io/File;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    const/4 p0, 0x1

    .line 12
    invoke-interface {p4, p0, v0}, Lcn/mucang/jiakaoyi/uilib/q/h$b;->b(ZLjava/io/File;)V

    :cond_2
    return-void

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 14
    :cond_4
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/utils/t;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p2, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :try_start_0
    new-instance p2, Lcn/mucang/jiakaoyi/uilib/q/h$a;

    move-object v3, p2

    move-object v4, p4

    move-object v5, v0

    move-object v6, p3

    move-wide v7, p0

    invoke-direct/range {v3 .. v8}, Lcn/mucang/jiakaoyi/uilib/q/h$a;-><init>(Lcn/mucang/jiakaoyi/uilib/q/h$b;Ljava/io/File;Ljava/lang/String;J)V

    invoke-virtual {v1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->d(Lcn/mucang/android/jiakaoyi/framework/utils/s;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u66f4\u65b0\u4e0b\u8f7d\u5730\u56fe\u5931\u8d25 "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 20
    :cond_5
    new-instance p2, Lcn/mucang/jiakaoyi/uilib/q/d;

    invoke-direct {p2, p4, p0, p1}, Lcn/mucang/jiakaoyi/uilib/q/d;-><init>(Lcn/mucang/jiakaoyi/uilib/q/h$b;J)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static o(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/q/h$b;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/q/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/q/c;-><init>(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/q/h$b;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V

    invoke-direct {v0, p0, v1}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public c(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/q/h$b;)V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    iget-object v0, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataUrl:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v0, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapDataMd5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; mapDataUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->e(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    iget-wide v0, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/q/h;->d(J)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUpdateMap examSiteId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";localFileMD5 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";mapDataMd5 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 9
    iget-object v3, p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->mapDataMd5:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance p2, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/q/e;

    invoke-direct {v1, p3, v0}, Lcn/mucang/jiakaoyi/uilib/q/e;-><init>(Lcn/mucang/jiakaoyi/uilib/q/h$b;Ljava/io/File;)V

    invoke-direct {p2, p1, v1}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    invoke-static {p1, p3, p2, v2}, Lcn/mucang/jiakaoyi/uilib/q/h;->o(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/q/h$b;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string v0, "\u672c\u5730\u5730\u56fe\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 12
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 13
    invoke-static {p1, p3, p2, v2}, Lcn/mucang/jiakaoyi/uilib/q/h;->o(Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/q/h$b;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V

    return-void

    .line 14
    :cond_5
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5730\u56fe\u6570\u636enull \u6216\u8005 isHighGps ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz p3, :cond_6

    .line 15
    new-instance p2, Lcn/mucang/jiakaoyi/uilib/r/a;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/q/b;

    invoke-direct {v0, p3}, Lcn/mucang/jiakaoyi/uilib/q/b;-><init>(Lcn/mucang/jiakaoyi/uilib/q/h$b;)V

    invoke-direct {p2, p1, v0}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method
