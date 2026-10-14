.class final Lcn/mucang/sundial/library/UpdateManager$checkUpdate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/UpdateManager;->checkUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/UpdateManager$checkUpdate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/library/UpdateManager$checkUpdate$1;

    invoke-direct {v0}, Lcn/mucang/sundial/library/UpdateManager$checkUpdate$1;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/UpdateManager$checkUpdate$1;->INSTANCE:Lcn/mucang/sundial/library/UpdateManager$checkUpdate$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/http/UpdateApi;

    invoke-direct {v0}, Lcn/mucang/sundial/library/http/UpdateApi;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppUtils.getAppVersionName()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->d()I

    move-result v2

    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->getImei()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeviceUtils.getImei()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/sundial/library/http/UpdateApi;->check(Ljava/lang/String;ILjava/lang/String;)Lcn/mucang/sundial/library/entity/UpdateInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/UpdateInfo;->isNeedUpdate()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/UpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v1, v2, :cond_5

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v4, "update.apk"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-static {v1}, Lcom/blankj/utilcode/util/a;->a(Ljava/io/File;)Lcom/blankj/utilcode/util/a$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/blankj/utilcode/util/a$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/a$a;->e()I

    move-result v4

    .line 7
    invoke-static {}, Lcom/blankj/utilcode/util/a;->d()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 8
    sget-object v0, Lcn/mucang/sundial/library/UpdateManager;->INSTANCE:Lcn/mucang/sundial/library/UpdateManager;

    invoke-static {v0, v2, v1}, Lcn/mucang/sundial/library/UpdateManager;->access$upgradeApk(Lcn/mucang/sundial/library/UpdateManager;Lcom/blankj/utilcode/util/a$a;Ljava/io/File;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    :try_start_0
    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d"

    .line 10
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/UpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/mucang/sundial/library/entity/UpdateInfo;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcn/mucang/sundial/android/tcp/utils/UtilsKt;->downloadURLToFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)J

    .line 12
    invoke-static {v1}, Lcom/blankj/utilcode/util/a;->a(Ljava/io/File;)Lcom/blankj/utilcode/util/a$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v2, Lcn/mucang/sundial/library/UpdateManager;->INSTANCE:Lcn/mucang/sundial/library/UpdateManager;

    invoke-static {v2, v0, v1}, Lcn/mucang/sundial/library/UpdateManager;->access$upgradeApk(Lcn/mucang/sundial/library/UpdateManager;Lcom/blankj/utilcode/util/a$a;Ljava/io/File;)V

    goto :goto_1

    :cond_3
    const-string v0, "Apk\u5347\u7ea7\u6587\u4ef6\u53ef\u80fd\u88ab\u5220\u9664"

    .line 14
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "qcom.android.receiver"

    invoke-static {v2, v6, v3, v4, v5}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "\u5220\u9664APK\u6587\u4ef6"

    .line 16
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 18
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5347\u7ea7\u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method
