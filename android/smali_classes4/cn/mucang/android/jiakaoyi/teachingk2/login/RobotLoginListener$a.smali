.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/tts/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->a(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$onUserLogin$listener$1",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;",
        "onIntercept",
        "",
        "onSpeakEnd",
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


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$a;->a:Z

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$a;->b:Landroid/app/Activity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntercept()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$a;->a:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$a;->b:Landroid/app/Activity;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;

    if-nez v1, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;->getDefaultVolume()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->b(Landroid/content/Context;IZ)Z

    :cond_1
    return-void
.end method

.method public onSpeakBegin()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->c(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method public onSpeakEnd()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$a;->a:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener$a;->b:Landroid/app/Activity;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;

    if-nez v1, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;->getDefaultVolume()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->b(Landroid/content/Context;IZ)Z

    :cond_1
    return-void
.end method

.method public onSpeakPaused()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->e(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method public onSpeakResumed()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->g(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method
