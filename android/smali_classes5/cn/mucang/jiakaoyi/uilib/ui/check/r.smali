.class public final Lcn/mucang/jiakaoyi/uilib/ui/check/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u0019B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010\u0018\u001a\u00020\u0013R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher;",
        "",
        "forceOta",
        "",
        "forceObd",
        "callback",
        "Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;",
        "(ZZLcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;)V",
        "getCallback",
        "()Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;",
        "setCallback",
        "(Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;)V",
        "getForceObd",
        "()Z",
        "setForceObd",
        "(Z)V",
        "getForceOta",
        "setForceOta",
        "download",
        "",
        "url",
        "",
        "file",
        "Ljava/io/File;",
        "fetch",
        "FetcherFirmwareCallback",
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


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;


# direct methods
.method public constructor <init>(ZZLcn/mucang/jiakaoyi/uilib/ui/check/r$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->a:Z

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->b:Z

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->c:Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;

    return-void
.end method

.method private static final b(Lcn/mucang/jiakaoyi/uilib/ui/check/r;)V
    .locals 20

    const-string v0, "this$0"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->e()Z

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->d()Z

    move-result v4

    invoke-static {v0, v4}, Lcn/mucang/jiakaoyi/uilib/unityres/a;->a(ZZ)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "forceOta\u4e3atue\uff0c\u4f46\u662f\u83b7\u53d6\u7684\u5347\u7ea7\u4e3a\u7a7a"

    .line 4
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "forceObd\u4e3atue\uff0c\u4f46\u662f\u83b7\u53d6\u7684\u5347\u7ea7\u4e3a\u7a7a"

    .line 6
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_1
    const-string v4, "khq"

    const-string v5, "ota\u5347\u7ea7api\u8c03\u7528\u65f6\u95f4 : "

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    long-to-double v2, v6

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v4, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "list"

    .line 10
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u65b0\u5347\u7ea7\u670d\u52a1\u54cd\u5e94: \u7c7b\u578b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getFilePath()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    const-string v9, "-"

    const-string v10, "hx"

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    goto :goto_1

    :cond_3
    const-string v15, "."

    const-string v16, "dn"

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    .line 13
    invoke-static/range {v14 .. v19}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v7, "/"

    const-string v8, "xx"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 14
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result v2

    sget v6, Lcn/mucang/jiakaoyi/uilib/unityres/a;->d:I

    if-ne v2, v6, :cond_9

    .line 17
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    .line 18
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v2

    const/16 v3, 0x2710

    const/16 v4, 0x2e

    if-lt v2, v3, :cond_6

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v5

    div-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v5

    rem-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->setVersionName(Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->setVersionName(Ljava/lang/String;)V

    .line 24
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->c()Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;

    move-result-object v2

    if-nez v2, :cond_8

    goto/16 :goto_7

    :cond_8
    const-string v3, "updateModel"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;->b(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    goto/16 :goto_7

    .line 25
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->c()Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;->e(Ljava/util/List;)V

    .line 26
    :goto_3
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/check/r$b;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/ui/check/r$b;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/s;->G0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_d

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    .line 28
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->setDownloadFilePath(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 31
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 32
    :cond_b
    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/utils/t;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v11, "file.absolutePath"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getMd5()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v6, v11}, Lcn/mucang/android/jiakaoyi/framework/utils/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->c()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 33
    invoke-virtual {v7, v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->setFileAvailable(Z)V

    goto :goto_5

    :cond_c
    const-string v6, "\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25:"

    .line 34
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v7, v5}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->setFileAvailable(Z)V

    :goto_5
    move v6, v8

    goto :goto_4

    .line 36
    :cond_d
    invoke-static {}, Lkotlin/collections/s;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 37
    :cond_e
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    .line 39
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->isFileAvailable()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 40
    :cond_10
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->c()Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_7

    :cond_11
    invoke-interface {v0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;->c(Ljava/util/List;)V

    goto :goto_7

    .line 42
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->c()Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_7

    :cond_13
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;->a()V

    goto :goto_7

    .line 43
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->c()Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_7

    :cond_15
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->c()Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_7

    :cond_16
    invoke-interface {v1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;->d(Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method public static synthetic f(Lcn/mucang/jiakaoyi/uilib/ui/check/r;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->b(Lcn/mucang/jiakaoyi/uilib/ui/check/r;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->c:Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;->onStart()V

    .line 2
    :goto_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/r;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->c:Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->b:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/r;->a:Z

    return v0
.end method
