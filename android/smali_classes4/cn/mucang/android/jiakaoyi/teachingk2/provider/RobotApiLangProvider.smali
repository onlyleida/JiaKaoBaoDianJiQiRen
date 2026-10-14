.class public Lcn/mucang/android/jiakaoyi/teachingk2/provider/RobotApiLangProvider;
.super Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsApiLangDataProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/provider/RobotApiLangProvider;",
        "Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsApiLangDataProvider;",
        "args",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "getApiLang",
        "Lcn/mucang/android/jiakaoyi/framework/consts/Language;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsApiLangDataProvider;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getApiLang()Lcn/mucang/android/jiakaoyi/framework/consts/Language;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/Language;->CHINESE:Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor;->c:Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$a;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/RobotInterceptor$a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->b()Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    move-result-object v0

    const-string v1, "getCurrentLanguage()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/AbsApiLangDataProvider;->getApiLang()Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    move-result-object v0

    return-object v0
.end method
