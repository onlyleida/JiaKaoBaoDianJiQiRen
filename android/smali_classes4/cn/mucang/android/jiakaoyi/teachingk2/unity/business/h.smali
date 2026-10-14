.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x64

.field public static b:I = 0x65

.field private static final c:[I

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x64

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x65

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->c:[I

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->c:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 2
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->c(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v4

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5220\u9664unity\u8d44\u6e90:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_key_res_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->e(I)Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;->path:Ljava/lang/String;

    return-object p0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    :try_start_0
    const-class v3, Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v1, v2

    :catch_1
    :cond_0
    return-object v1
.end method

.method private static f(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->e(I)Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget p0, p0, Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;->version:I

    return p0
.end method

.method static synthetic g(Lcn/mucang/jiakaoyi/uilib/unityres/a$b;Ljava/lang/Float;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcn/mucang/jiakaoyi/uilib/unityres/a$b;->a(F)V

    :cond_0
    return-void
.end method

.method public static h(ILcn/mucang/jiakaoyi/uilib/unityres/a$b;)V
    .locals 12

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->f(I)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->c(I)Ljava/lang/String;

    move-result-object v9

    .line 3
    invoke-static {v9}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-nez v10, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/upgrade/c;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/upgrade/c;-><init>()V

    invoke-virtual {v2, p0, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/c;->m(II)Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v2

    if-le v2, v0, :cond_4

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v7

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/b;

    invoke-direct {v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/b;-><init>(Lcn/mucang/jiakaoyi/uilib/unityres/a$b;)V

    .line 9
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->d()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_u_prefix_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :try_start_1
    new-instance v11, Lcn/mucang/android/jiakaoyi/framework/utils/t;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v0, v4, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;

    move-object v1, v0

    move v4, v10

    move-object v5, v9

    move v6, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/io/File;ZLjava/lang/String;IILcn/mucang/jiakaoyi/uilib/unityres/a$b;)V

    invoke-virtual {v11, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->d(Lcn/mucang/android/jiakaoyi/framework/utils/s;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    if-nez v10, :cond_3

    if-eqz p1, :cond_2

    .line 11
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_download_fail:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/mucang/jiakaoyi/uilib/unityres/a$b;->c(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_7

    .line 12
    invoke-interface {p1, v9}, Lcn/mucang/jiakaoyi/uilib/unityres/a$b;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-nez v10, :cond_6

    if-eqz p1, :cond_5

    .line 13
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_file_not_exist:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/mucang/jiakaoyi/uilib/unityres/a$b;->c(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    if-eqz p1, :cond_7

    .line 14
    invoke-interface {p1, v9}, Lcn/mucang/jiakaoyi/uilib/unityres/a$b;->b(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static i()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->c:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    .line 3
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->c(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    return-object v7

    .line 5
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    return-object v7

    .line 6
    :cond_1
    sget v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->b:I

    if-ne v4, v6, :cond_2

    .line 7
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static j(IILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/unityres/UpgradeLocalInfo;-><init>(IILjava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
