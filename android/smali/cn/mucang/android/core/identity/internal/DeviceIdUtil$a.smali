.class Lcn/mucang/android/core/identity/internal/DeviceIdUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->r(Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$a;->b:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$a;->a:Ljava/lang/String;

    const-string v1, "mcUniqueId.db"

    const-string v2, "mcUniqueId"

    invoke-static {v1, v2, v0}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 4
    iget-object v6, p0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$a;->b:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    invoke-static {v6, v5}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->c(Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;Ljava/io/File;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.mucang.action.core.uim"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "mucang://update-device-id.cn"

    .line 7
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$a;->a:Ljava/lang/String;

    const-string v3, "deviceId"

    .line 8
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 9
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "permission"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 10
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
